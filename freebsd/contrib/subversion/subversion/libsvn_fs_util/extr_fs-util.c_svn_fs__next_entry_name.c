
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* apr_pstrdup (int *,char const*) ;
 char* apr_pstrndup (int *,char const*,int) ;
 char* strchr (char const*,char) ;

char *
svn_fs__next_entry_name(const char **next_p,
                        const char *path,
                        apr_pool_t *pool)
{
  const char *end;


  end = strchr(path, '/');

  if (! end)
    {


      *next_p = 0;
      return apr_pstrdup(pool, path);
    }
  else
    {


      const char *next = end;
      while (*next == '/')
        next++;
      *next_p = next;
      return apr_pstrndup(pool, path, end - path);
    }
}
