
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sr_get_hex_digit (int) ;

void
sr_get_hex_byte (char *byt)
{
  int val;

  val = sr_get_hex_digit (1) << 4;
  val |= sr_get_hex_digit (0);
  *byt = val;
}
