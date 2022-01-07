
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* apr_pstrdup (int *,char const*) ;
 char* strstr (char*,char const*) ;

__attribute__((used)) static const char *
tweak_path_for_ordering(const char *original,
                        apr_pool_t *pool)
{

  enum {SPECIAL_COUNT = 2};
  static const char *special[SPECIAL_COUNT] = {"trunk", "branch"};
  char *pos;
  char *path = apr_pstrdup(pool, original);
  int i;






  for (i = 0; i < SPECIAL_COUNT; ++i)
    for (pos = strstr(path, special[i]);
         pos;
         pos = strstr(pos + 1, special[i]))
      {
        *pos = (char)(i + '\1');
      }

   return path;
}
