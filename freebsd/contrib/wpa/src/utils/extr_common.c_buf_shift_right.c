
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



void buf_shift_right(u8 *buf, size_t len, size_t bits)
{
 size_t i;

 for (i = len - 1; i > 0; i--)
  buf[i] = (buf[i - 1] << (8 - bits)) | (buf[i] >> bits);
 buf[0] >>= bits;
}
