
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int ns_name_uncompress (int const*,int const*,int const*,char*,size_t) ;

int
dn_expand(const u_char *msg, const u_char *eom, const u_char *src,
   char *dst, int dstsiz)
{
 int n = ns_name_uncompress(msg, eom, src, dst, (size_t)dstsiz);

 if (n > 0 && dst[0] == '.')
  dst[0] = '\0';
 return (n);
}
