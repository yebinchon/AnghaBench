
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static uint8_t *pt_encode_int(uint8_t *pos, uint64_t val, int size)
{
 for (; size; --size, val >>= 8)
  *pos++ = (uint8_t) val;

 return pos;
}
