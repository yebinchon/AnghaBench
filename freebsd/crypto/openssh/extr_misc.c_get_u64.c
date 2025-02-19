
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef scalar_t__ u_char ;



u_int64_t
get_u64(const void *vp)
{
 const u_char *p = (const u_char *)vp;
 u_int64_t v;

 v = (u_int64_t)p[0] << 56;
 v |= (u_int64_t)p[1] << 48;
 v |= (u_int64_t)p[2] << 40;
 v |= (u_int64_t)p[3] << 32;
 v |= (u_int64_t)p[4] << 24;
 v |= (u_int64_t)p[5] << 16;
 v |= (u_int64_t)p[6] << 8;
 v |= (u_int64_t)p[7];

 return (v);
}
