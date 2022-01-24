#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_depth_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int /*<<< orphan*/  svn_depth_exclude ; 
 int /*<<< orphan*/  svn_depth_files ; 
 int /*<<< orphan*/  svn_depth_immediates ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  svn_depth_unknown ; 

svn_depth_t
FUNC1(const char *word)
{
  if (FUNC0(word, "exclude") == 0)
    return svn_depth_exclude;
  if (FUNC0(word, "unknown") == 0)
    return svn_depth_unknown;
  if (FUNC0(word, "empty") == 0)
    return svn_depth_empty;
  if (FUNC0(word, "files") == 0)
    return svn_depth_files;
  if (FUNC0(word, "immediates") == 0)
    return svn_depth_immediates;
  if (FUNC0(word, "infinity") == 0)
    return svn_depth_infinity;
  /* There's no special value for invalid depth, and no convincing
     reason to make one yet, so just fall back to unknown depth.
     If you ever change that convention, check callers to make sure
     they're not depending on it (e.g., option parsing in main() ).
  */
  return svn_depth_unknown;
}