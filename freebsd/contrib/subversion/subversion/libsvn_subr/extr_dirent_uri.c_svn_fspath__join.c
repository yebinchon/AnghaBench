
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int SVN_VA_NULL ;
 char* apr_pstrcat (int *,char const*,char const*,char const*,...) ;
 char* apr_pstrdup (int *,char const*) ;
 int assert (int ) ;
 int svn_fspath__is_canonical (char const*) ;
 int svn_relpath_is_canonical (char const*) ;

char *
svn_fspath__join(const char *fspath,
                 const char *relpath,
                 apr_pool_t *result_pool)
{
  char *result;
  assert(svn_fspath__is_canonical(fspath));
  assert(svn_relpath_is_canonical(relpath));

  if (relpath[0] == '\0')
    result = apr_pstrdup(result_pool, fspath);
  else if (fspath[1] == '\0')
    result = apr_pstrcat(result_pool, "/", relpath, SVN_VA_NULL);
  else
    result = apr_pstrcat(result_pool, fspath, "/", relpath, SVN_VA_NULL);

  assert(svn_fspath__is_canonical(result));
  return result;
}
