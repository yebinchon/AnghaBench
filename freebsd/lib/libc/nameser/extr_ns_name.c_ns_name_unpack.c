
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int ns_name_unpack2 (int const*,int const*,int const*,int *,size_t,int *) ;

int
ns_name_unpack(const u_char *msg, const u_char *eom, const u_char *src,
        u_char *dst, size_t dstsiz)
{
 return (ns_name_unpack2(msg, eom, src, dst, dstsiz, ((void*)0)));
}
