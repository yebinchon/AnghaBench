
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_cl__show_revs_t ;


 int SVN_CL__SHOW_REVS_ELIGIBLE ;
 int SVN_CL__SHOW_REVS_MERGED ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_cl__show_revs_eligible ;
 int svn_cl__show_revs_invalid ;
 int svn_cl__show_revs_merged ;

svn_cl__show_revs_t
svn_cl__show_revs_from_word(const char *word)
{
  if (strcmp(word, SVN_CL__SHOW_REVS_MERGED) == 0)
    return svn_cl__show_revs_merged;
  if (strcmp(word, SVN_CL__SHOW_REVS_ELIGIBLE) == 0)
    return svn_cl__show_revs_eligible;

  return svn_cl__show_revs_invalid;
}
