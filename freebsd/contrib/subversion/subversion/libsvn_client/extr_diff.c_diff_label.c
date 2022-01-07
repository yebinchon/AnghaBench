
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int apr_pool_t ;


 scalar_t__ DIFF_REVNUM_NONEXISTENT ;
 int _ (char*) ;
 char* apr_psprintf (int *,int ,char const*,...) ;

__attribute__((used)) static const char *
diff_label(const char *path,
           svn_revnum_t revnum,
           apr_pool_t *result_pool)
{
  const char *label;
  if (revnum >= 0)
    label = apr_psprintf(result_pool, _("%s\t(revision %ld)"), path, revnum);
  else if (revnum == DIFF_REVNUM_NONEXISTENT)
    label = apr_psprintf(result_pool, _("%s\t(nonexistent)"), path);
  else
    label = apr_psprintf(result_pool, _("%s\t(working copy)"), path);

  return label;
}
