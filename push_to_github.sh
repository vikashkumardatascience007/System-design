#!/bin/bash
# push_to_github.sh - helper to push this repo to GitHub
# Usage:
#   export GIT_REMOTE="https://github.com/you/repo.git"
#   ./push_to_github.sh
set -e
if [ -z "$GIT_REMOTE" ]; then
  echo "Set GIT_REMOTE to your repo URL, e.g. https://github.com/you/repo.git"
  exit 1
fi
git init || true
git add .
git commit -m "Initial commit: Latency & Throughput system design" || true
git branch -M main || true
git remote remove origin 2>/dev/null || true
git remote add origin "$GIT_REMOTE"
git push -u origin main
