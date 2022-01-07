
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long sr_get_hex_digit (int) ;

long
sr_get_hex_word (void)
{
  long val;
  int j;

  val = 0;
  for (j = 0; j < 8; j++)
    val = (val << 4) + sr_get_hex_digit (j == 0);
  return val;
}
