
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;


 int NS_GET32 (int ,int const*) ;

u_long
ns_get32(const u_char *src) {
 u_long dst;

 NS_GET32(dst, src);
 return (dst);
}
