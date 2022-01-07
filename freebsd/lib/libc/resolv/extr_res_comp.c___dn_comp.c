
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int ns_name_compress (char const*,int *,size_t,int const**,int const**) ;

int
dn_comp(const char *src, u_char *dst, int dstsiz,
 u_char **dnptrs, u_char **lastdnptr)
{
 return (ns_name_compress(src, dst, (size_t)dstsiz,
     (const u_char **)dnptrs,
     (const u_char **)lastdnptr));
}
