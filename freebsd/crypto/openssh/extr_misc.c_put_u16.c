
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u_char ;



void
put_u16(void *vp, u_int16_t v)
{
 u_char *p = (u_char *)vp;

 p[0] = (u_char)(v >> 8) & 0xff;
 p[1] = (u_char)v & 0xff;
}
