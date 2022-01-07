
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* apr_pstrdup (int *,char const*) ;
 char* apr_pstrmemdup (int *,char const*,int) ;
 char* strrchr (char const*,char) ;

void
svn_path_splitext(const char **path_root,
                  const char **path_ext,
                  const char *path,
                  apr_pool_t *pool)
{
  const char *last_dot, *last_slash;


  if (! (path_root || path_ext))
    return;




  last_dot = strrchr(path, '.');
  if (last_dot && (*(last_dot + 1) != '\0'))
    {





      last_slash = strrchr(path, '/');
      if ((last_slash && (last_dot > (last_slash + 1)))
          || ((! last_slash) && (last_dot > path)))
        {
          if (path_root)
            *path_root = apr_pstrmemdup(pool, path,
                                        (last_dot - path + 1) * sizeof(*path));
          if (path_ext)
            *path_ext = apr_pstrdup(pool, last_dot + 1);
          return;
        }
    }


  if (path_root)
    *path_root = apr_pstrdup(pool, path);
  if (path_ext)
    *path_ext = "";
}
