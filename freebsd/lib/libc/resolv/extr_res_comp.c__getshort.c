
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u_char ;


 int ns_get16 (int const*) ;

u_int16_t _getshort(const u_char *src) { return (ns_get16(src)); }
