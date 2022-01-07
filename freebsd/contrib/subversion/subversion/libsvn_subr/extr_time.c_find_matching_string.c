
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t apr_size_t ;
typedef int apr_int32_t ;


 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static apr_int32_t
find_matching_string(char *str, apr_size_t size, const char strings[][4])
{
  apr_size_t i;

  for (i = 0; i < size; i++)
    if (strings[i] && (strcmp(str, strings[i]) == 0))
      return (apr_int32_t) i;

  return -1;
}
