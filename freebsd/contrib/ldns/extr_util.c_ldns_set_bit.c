
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



void
ldns_set_bit(uint8_t *byte, int bit_nr, bool value)
{




 if (bit_nr >= 0 && bit_nr < 8) {
  if (value) {
   *byte = *byte | (0x01 << bit_nr);
  } else {
   *byte = *byte & ~(0x01 << bit_nr);
  }
 }
}
