
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* apr_pstrmemdup (int *,char const*,size_t) ;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
remove_suffix(const char *str, const char *suffix, apr_pool_t *result_pool)
{
  size_t str_len = strlen(str);
  size_t suffix_len = strlen(suffix);

  if (str_len > suffix_len
      && strcmp(str + str_len - suffix_len, suffix) == 0)
    {
      return apr_pstrmemdup(result_pool, str, str_len - suffix_len);
    }

  return ((void*)0);
}
