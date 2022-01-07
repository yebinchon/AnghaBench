
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quad_t ;


 int strtoll (char const*,char**,int) ;

quad_t
strtoq(const char *nptr, char **endptr, int base)
{

 return strtoll(nptr, endptr, base);
}
