
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int APR_FNM_CASE_BLIND ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_fnmatch (char const*,char const*,int) ;
 char* apr_psprintf (int *,char*,char const*) ;

__attribute__((used)) static svn_boolean_t
match_pattern(const char *pattern, const char *value,
              svn_boolean_t caseblind, apr_pool_t *scratch_pool)
{
  const char *p = apr_psprintf(scratch_pool, "*%s*", pattern);
  int flags = (caseblind ? APR_FNM_CASE_BLIND : 0);

  return (apr_fnmatch(p, value, flags) == APR_SUCCESS);
}
