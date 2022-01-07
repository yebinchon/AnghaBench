
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int NS_GET16 (int ,int const*) ;

u_int
ns_get16(const u_char *src) {
 u_int dst;

 NS_GET16(dst, src);
 return (dst);
}
