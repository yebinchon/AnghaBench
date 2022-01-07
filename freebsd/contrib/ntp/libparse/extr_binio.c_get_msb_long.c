
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;



long
get_msb_long(
 unsigned char **bufpp
 )
{
  long retval;

  retval = (u_long)*((*bufpp)++) << 24;
  retval |= *((*bufpp)++) << 16;
  retval |= *((*bufpp)++) << 8;
  retval |= *((*bufpp)++);

  return retval;
}
