
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_quad_t ;


 int strtoull (char const*,char**,int) ;

u_quad_t
strtouq(const char *nptr, char **endptr, int base)
{

 return strtoull(nptr, endptr, base);
}
