
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_PATH_IS_EMPTY (char const*) ;
 char const* apr_pstrdup (int *,char const*) ;

const char *
svn_path_is_child(const char *path1,
                  const char *path2,
                  apr_pool_t *pool)
{
  apr_size_t i;





  if (SVN_PATH_IS_EMPTY(path1))
    {
      if (SVN_PATH_IS_EMPTY(path2)
          || path2[0] == '/')
        return ((void*)0);
      else

        return pool ? apr_pstrdup(pool, path2) : path2;
    }





  for (i = 0; path1[i] && path2[i]; i++)
    if (path1[i] != path2[i])
      return ((void*)0);
  if (path1[i] == '\0' && path2[i])
    {
      if (path2[i] == '/')
        return pool ? apr_pstrdup(pool, path2 + i + 1) : path2 + i + 1;
      else if (i == 1 && path1[0] == '/')
        return pool ? apr_pstrdup(pool, path2 + 1) : path2 + 1;
    }


  return ((void*)0);
}
