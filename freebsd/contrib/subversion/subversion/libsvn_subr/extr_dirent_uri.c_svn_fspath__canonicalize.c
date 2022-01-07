
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int SVN_VA_NULL ;
 char const* apr_pstrcat (int *,char*,int ,int ) ;
 int svn_relpath_canonicalize (char const*,int *) ;

const char *
svn_fspath__canonicalize(const char *fspath,
                         apr_pool_t *pool)
{
  if ((fspath[0] == '/') && (fspath[1] == '\0'))
    return "/";

  return apr_pstrcat(pool, "/", svn_relpath_canonicalize(fspath, pool),
                     SVN_VA_NULL);
}
