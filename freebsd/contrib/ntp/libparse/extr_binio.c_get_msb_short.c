
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
long
get_msb_short(
 unsigned char **bufpp
 )
{
  long retval;

  retval = *((*bufpp)++) << 8;
  retval |= *((*bufpp)++);

  return (retval & 0x8000) ? (~0xFFFF | retval) : retval;
}
