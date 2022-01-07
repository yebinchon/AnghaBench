
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,int,...) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *
print_two_power(int i,
                apr_pool_t *result_pool)
{
  const char *si_prefixes = " kMGTPEZY";

  int number = (i >= 0) ? (1 << (i % 10)) : 0;
  int thousands = (i >= 0) ? (i / 10) : 0;

  char si_prefix = (thousands < strlen(si_prefixes))
                 ? si_prefixes[thousands]
                 : '?';

  if (si_prefix == ' ')
    return apr_psprintf(result_pool, "%d", number);

  return apr_psprintf(result_pool, "%d%c", number, si_prefix);
}
