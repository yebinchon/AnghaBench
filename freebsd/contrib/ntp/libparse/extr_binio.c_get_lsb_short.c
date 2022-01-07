
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
long
get_lsb_short(
 unsigned char **bufpp
 )
{
  long retval;

  retval = *((*bufpp)++);
  retval |= *((*bufpp)++) << 8;

  return (retval & 0x8000) ? (~0xFFFF | retval) : retval;
}
