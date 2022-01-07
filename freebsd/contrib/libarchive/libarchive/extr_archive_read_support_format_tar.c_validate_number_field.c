
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
validate_number_field(const char* p_field, size_t i_size)
{
 unsigned char marker = (unsigned char)p_field[0];
 if (marker == 128 || marker == 255 || marker == 0) {

  return 1;
 } else {

  size_t i = 0;

  while (i < i_size && p_field[i] == ' ') {
   ++i;
  }

  while (i < i_size && p_field[i] >= '0' && p_field[i] <= '7') {
   ++i;
  }

  while (i < i_size) {
   if (p_field[i] != ' ' && p_field[i] != 0) {
    return 0;
   }
   ++i;
  }
  return 1;
 }
}
