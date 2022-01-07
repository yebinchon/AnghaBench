
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;


 int ns_get32 (int const*) ;

u_int32_t _getlong(const u_char *src) { return (ns_get32(src)); }
