
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 scalar_t__ SVN_PATH_IS_EMPTY (char const*) ;
 char SVN_PATH_LOCAL_SEPARATOR ;
 char* apr_pstrdup (int *,char const*) ;

const char *
svn_dirent_local_style(const char *dirent, apr_pool_t *pool)
{


  if (SVN_PATH_IS_EMPTY(dirent))
    return ".";


    {
      char *p = apr_pstrdup(pool, dirent);
      dirent = p;


      for (; *p != '\0'; ++p)
        if (*p == '/')
          *p = SVN_PATH_LOCAL_SEPARATOR;
    }


  return dirent;
}
