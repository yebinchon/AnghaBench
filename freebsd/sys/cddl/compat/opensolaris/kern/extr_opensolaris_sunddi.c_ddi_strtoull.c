
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strtouq (char const*,char**,int) ;

int
ddi_strtoull(const char *str, char **nptr, int base, unsigned long long *result)
{

 *result = (unsigned long long)strtouq(str, nptr, base);
 return (0);
}
