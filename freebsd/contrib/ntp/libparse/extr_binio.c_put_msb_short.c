
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
put_msb_short(
 unsigned char **bufpp,
 long val
 )
{
  *((*bufpp)++) = (unsigned char)((val >> 8) & 0xFF);
  *((*bufpp)++) = (unsigned char)( val & 0xFF);
}
