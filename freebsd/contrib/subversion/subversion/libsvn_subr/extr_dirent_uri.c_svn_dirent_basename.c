
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;
typedef int apr_pool_t ;


 char const* apr_pstrmemdup (int *,char const*,int) ;
 int assert (int) ;
 int strlen (char const*) ;
 scalar_t__ svn_dirent_is_canonical (char const*,int *) ;
 scalar_t__ svn_dirent_is_root (char const*,int) ;

const char *
svn_dirent_basename(const char *dirent, apr_pool_t *pool)
{
  apr_size_t len = strlen(dirent);
  apr_size_t start;

  assert(!pool || svn_dirent_is_canonical(dirent, pool));

  if (svn_dirent_is_root(dirent, len))
    return "";
  else
    {
      start = len;
      while (start > 0 && dirent[start - 1] != '/'



            )
        --start;
    }

  if (pool)
    return apr_pstrmemdup(pool, dirent + start, len - start);
  else
    return dirent + start;
}
