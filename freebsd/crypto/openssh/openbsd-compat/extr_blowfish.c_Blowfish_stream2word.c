
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef size_t u_int16_t ;



u_int32_t
Blowfish_stream2word(const u_int8_t *data, u_int16_t databytes,
    u_int16_t *current)
{
 u_int8_t i;
 u_int16_t j;
 u_int32_t temp;

 temp = 0x00000000;
 j = *current;

 for (i = 0; i < 4; i++, j++) {
  if (j >= databytes)
   j = 0;
  temp = (temp << 8) | data[j];
 }

 *current = j;
 return temp;
}
