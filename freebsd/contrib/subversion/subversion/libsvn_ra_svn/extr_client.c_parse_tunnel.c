
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* apr_pstrmemdup (int *,char const*,int) ;
 char* strchr (char const*,char) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static void parse_tunnel(const char *url, const char **tunnel,
                         apr_pool_t *pool)
{
  *tunnel = ((void*)0);

  if (strncasecmp(url, "svn", 3) != 0)
    return;
  url += 3;


  if (*url == '+')
    {
      const char *p;

      url++;
      p = strchr(url, ':');
      if (!p)
        return;
      *tunnel = apr_pstrmemdup(pool, url, p - url);
    }
}
