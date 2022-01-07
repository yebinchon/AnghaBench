
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long strtol (char const*,char**,int) ;

int
ddi_strtol(const char *str, char **nptr, int base, long *result)
{

 *result = strtol(str, nptr, base);
 return (0);
}
