
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



int has_ctrl_char(const u8 *data, size_t len)
{
 size_t i;

 for (i = 0; i < len; i++) {
  if (data[i] < 32 || data[i] == 127)
   return 1;
 }
 return 0;
}
