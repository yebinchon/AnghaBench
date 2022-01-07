
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int SVN_VA_NULL ;
 char const* apr_pstrcat (int *,char*,int ,int ) ;
 char const* apr_pstrdup (int *,char const*) ;
 int assert (int ) ;
 int svn_fspath__is_canonical (char const*) ;
 int svn_relpath_dirname (char const*,int *) ;

const char *
svn_fspath__dirname(const char *fspath,
                    apr_pool_t *pool)
{
  assert(svn_fspath__is_canonical(fspath));

  if (fspath[0] == '/' && fspath[1] == '\0')
    return apr_pstrdup(pool, fspath);
  else
    return apr_pstrcat(pool, "/", svn_relpath_dirname(fspath + 1, pool),
                       SVN_VA_NULL);
}
