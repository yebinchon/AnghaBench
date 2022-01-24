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
typedef  int /*<<< orphan*/  svn_cl__accept_t ;

/* Variables and functions */
 char* SVN_CL__ACCEPT_BASE ; 
 char* SVN_CL__ACCEPT_EDIT ; 
 char* SVN_CL__ACCEPT_LAUNCH ; 
 char* SVN_CL__ACCEPT_MINE_CONFLICT ; 
 char* SVN_CL__ACCEPT_MINE_FULL ; 
 char* SVN_CL__ACCEPT_POSTPONE ; 
 char* SVN_CL__ACCEPT_RECOMMENDED ; 
 char* SVN_CL__ACCEPT_THEIRS_CONFLICT ; 
 char* SVN_CL__ACCEPT_THEIRS_FULL ; 
 char* SVN_CL__ACCEPT_WORKING ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  svn_cl__accept_base ; 
 int /*<<< orphan*/  svn_cl__accept_edit ; 
 int /*<<< orphan*/  svn_cl__accept_invalid ; 
 int /*<<< orphan*/  svn_cl__accept_launch ; 
 int /*<<< orphan*/  svn_cl__accept_mine_conflict ; 
 int /*<<< orphan*/  svn_cl__accept_mine_full ; 
 int /*<<< orphan*/  svn_cl__accept_postpone ; 
 int /*<<< orphan*/  svn_cl__accept_recommended ; 
 int /*<<< orphan*/  svn_cl__accept_theirs_conflict ; 
 int /*<<< orphan*/  svn_cl__accept_theirs_full ; 
 int /*<<< orphan*/  svn_cl__accept_working ; 

svn_cl__accept_t
FUNC1(const char *word)
{
  /* Shorthand options are consistent with  svn_cl__conflict_handler(). */
  if (FUNC0(word, SVN_CL__ACCEPT_POSTPONE) == 0
      || FUNC0(word, "p") == 0 || FUNC0(word, ":-P") == 0)
    return svn_cl__accept_postpone;
  if (FUNC0(word, SVN_CL__ACCEPT_BASE) == 0)
    /* ### shorthand? */
    return svn_cl__accept_base;
  if (FUNC0(word, SVN_CL__ACCEPT_WORKING) == 0)
    /* ### shorthand? */
    return svn_cl__accept_working;
  if (FUNC0(word, SVN_CL__ACCEPT_MINE_CONFLICT) == 0
      || FUNC0(word, "mc") == 0 || FUNC0(word, "X-)") == 0)
    return svn_cl__accept_mine_conflict;
  if (FUNC0(word, SVN_CL__ACCEPT_THEIRS_CONFLICT) == 0
      || FUNC0(word, "tc") == 0 || FUNC0(word, "X-(") == 0)
    return svn_cl__accept_theirs_conflict;
  if (FUNC0(word, SVN_CL__ACCEPT_MINE_FULL) == 0
      || FUNC0(word, "mf") == 0 || FUNC0(word, ":-)") == 0)
    return svn_cl__accept_mine_full;
  if (FUNC0(word, SVN_CL__ACCEPT_THEIRS_FULL) == 0
      || FUNC0(word, "tf") == 0 || FUNC0(word, ":-(") == 0)
    return svn_cl__accept_theirs_full;
  if (FUNC0(word, SVN_CL__ACCEPT_EDIT) == 0
      || FUNC0(word, "e") == 0 || FUNC0(word, ":-E") == 0)
    return svn_cl__accept_edit;
  if (FUNC0(word, SVN_CL__ACCEPT_LAUNCH) == 0
      || FUNC0(word, "l") == 0 || FUNC0(word, ":-l") == 0)
    return svn_cl__accept_launch;
  if (FUNC0(word, SVN_CL__ACCEPT_RECOMMENDED) == 0
      || FUNC0(word, "r") == 0)
    return svn_cl__accept_recommended;
  /* word is an invalid action. */
  return svn_cl__accept_invalid;
}