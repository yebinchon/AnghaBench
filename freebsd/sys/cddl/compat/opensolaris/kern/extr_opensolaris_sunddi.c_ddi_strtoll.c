
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strtoq (char const*,char**,int) ;

int
ddi_strtoll(const char *str, char **nptr, int base, long long *result)
{

 *result = (long long)strtoq(str, nptr, base);
 return (0);
}
