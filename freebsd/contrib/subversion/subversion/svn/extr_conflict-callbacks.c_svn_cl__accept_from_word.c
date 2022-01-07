
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_cl__accept_t ;


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
 scalar_t__ strcmp (char const*,char*) ;
 int svn_cl__accept_base ;
 int svn_cl__accept_edit ;
 int svn_cl__accept_invalid ;
 int svn_cl__accept_launch ;
 int svn_cl__accept_mine_conflict ;
 int svn_cl__accept_mine_full ;
 int svn_cl__accept_postpone ;
 int svn_cl__accept_recommended ;
 int svn_cl__accept_theirs_conflict ;
 int svn_cl__accept_theirs_full ;
 int svn_cl__accept_working ;

svn_cl__accept_t
svn_cl__accept_from_word(const char *word)
{

  if (strcmp(word, SVN_CL__ACCEPT_POSTPONE) == 0
      || strcmp(word, "p") == 0 || strcmp(word, ":-P") == 0)
    return svn_cl__accept_postpone;
  if (strcmp(word, SVN_CL__ACCEPT_BASE) == 0)

    return svn_cl__accept_base;
  if (strcmp(word, SVN_CL__ACCEPT_WORKING) == 0)

    return svn_cl__accept_working;
  if (strcmp(word, SVN_CL__ACCEPT_MINE_CONFLICT) == 0
      || strcmp(word, "mc") == 0 || strcmp(word, "X-)") == 0)
    return svn_cl__accept_mine_conflict;
  if (strcmp(word, SVN_CL__ACCEPT_THEIRS_CONFLICT) == 0
      || strcmp(word, "tc") == 0 || strcmp(word, "X-(") == 0)
    return svn_cl__accept_theirs_conflict;
  if (strcmp(word, SVN_CL__ACCEPT_MINE_FULL) == 0
      || strcmp(word, "mf") == 0 || strcmp(word, ":-)") == 0)
    return svn_cl__accept_mine_full;
  if (strcmp(word, SVN_CL__ACCEPT_THEIRS_FULL) == 0
      || strcmp(word, "tf") == 0 || strcmp(word, ":-(") == 0)
    return svn_cl__accept_theirs_full;
  if (strcmp(word, SVN_CL__ACCEPT_EDIT) == 0
      || strcmp(word, "e") == 0 || strcmp(word, ":-E") == 0)
    return svn_cl__accept_edit;
  if (strcmp(word, SVN_CL__ACCEPT_LAUNCH) == 0
      || strcmp(word, "l") == 0 || strcmp(word, ":-l") == 0)
    return svn_cl__accept_launch;
  if (strcmp(word, SVN_CL__ACCEPT_RECOMMENDED) == 0
      || strcmp(word, "r") == 0)
    return svn_cl__accept_recommended;

  return svn_cl__accept_invalid;
}
