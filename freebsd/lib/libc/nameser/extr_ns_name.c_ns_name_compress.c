
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int NS_MAXCDNAME ;
 int ns_name_pack (int *,int *,size_t,int const**,int const**) ;
 int ns_name_pton (char const*,int *,int) ;

int
ns_name_compress(const char *src, u_char *dst, size_t dstsiz,
   const u_char **dnptrs, const u_char **lastdnptr)
{
 u_char tmp[NS_MAXCDNAME];

 if (ns_name_pton(src, tmp, sizeof tmp) == -1)
  return (-1);
 return (ns_name_pack(tmp, dst, dstsiz, dnptrs, lastdnptr));
}
