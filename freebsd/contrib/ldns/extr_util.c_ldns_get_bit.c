
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



int
ldns_get_bit(uint8_t bits[], size_t index)
{




 return (int) (bits[index / 8] & (1 << (7 - index % 8)));
}
