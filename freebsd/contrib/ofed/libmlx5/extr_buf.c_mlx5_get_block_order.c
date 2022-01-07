
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t mlx5_get_block_order(uint32_t v)
{
 static const uint32_t bits_arr[] = {0x2, 0xC, 0xF0, 0xFF00, 0xFFFF0000};
 static const uint32_t shift_arr[] = {1, 2, 4, 8, 16};
 int i;
 uint32_t input_val = v;

 register uint32_t r = 0;
 for (i = 4; i >= 0; i--) {
  if (v & bits_arr[i]) {
   v >>= shift_arr[i];
   r |= shift_arr[i];
  }
 }

 r += !!(input_val & ((1 << r) - 1));

 return r;
}
