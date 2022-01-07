
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef scalar_t__ u_char ;



u_int16_t
get_u16(const void *vp)
{
 const u_char *p = (const u_char *)vp;
 u_int16_t v;

 v = (u_int16_t)p[0] << 8;
 v |= (u_int16_t)p[1];

 return (v);
}
