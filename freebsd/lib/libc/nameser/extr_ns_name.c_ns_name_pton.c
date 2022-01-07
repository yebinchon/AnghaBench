
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int ns_name_pton2 (char const*,int *,size_t,int *) ;

int
ns_name_pton(const char *src, u_char *dst, size_t dstsiz) {
 return (ns_name_pton2(src, dst, dstsiz, ((void*)0)));
}
