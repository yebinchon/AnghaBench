
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;



void
put_u32(void *vp, u_int32_t v)
{
 u_char *p = (u_char *)vp;

 p[0] = (u_char)(v >> 24) & 0xff;
 p[1] = (u_char)(v >> 16) & 0xff;
 p[2] = (u_char)(v >> 8) & 0xff;
 p[3] = (u_char)v & 0xff;
}
