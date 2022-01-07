
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char SVN_PATH_LOCAL_SEPARATOR ;
 char* apr_pstrdup (int *,char const*) ;

__attribute__((used)) static const char *
internal_style(const char *path, apr_pool_t *pool)
{

    {
      char *p = apr_pstrdup(pool, path);
      path = p;


      for (; *p != '\0'; ++p)
        if (*p == SVN_PATH_LOCAL_SEPARATOR)
          *p = '/';
    }


  return path;
}
