
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int __m128i ;



__attribute__((used)) static void
append_int(size_t value, __m128i *block, size_t offset)
{
 int indx = sizeof(*block) - 1;
 uint8_t *bp = (uint8_t*)block;

 while (indx > (sizeof(*block) - offset)) {
  bp[indx] = value & 0xff;
  indx--;
  value >>= 8;
 }
}
