
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int NS_MAXCDNAME ;
 int ns_name_ntop (int *,char*,size_t) ;
 int ns_name_unpack (int const*,int const*,int const*,int *,int) ;

int
ns_name_uncompress(const u_char *msg, const u_char *eom, const u_char *src,
     char *dst, size_t dstsiz)
{
 u_char tmp[NS_MAXCDNAME];
 int n;

 if ((n = ns_name_unpack(msg, eom, src, tmp, sizeof tmp)) == -1)
  return (-1);
 if (ns_name_ntop(tmp, dst, dstsiz) == -1)
  return (-1);
 return (n);
}
