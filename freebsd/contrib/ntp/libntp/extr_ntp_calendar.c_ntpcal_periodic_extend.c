
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ int32_t ;


 int int32_to_uint32_2cpl (scalar_t__) ;
 scalar_t__ uint32_2cpl_to_int32 (int) ;

int32_t
ntpcal_periodic_extend(
 int32_t pivot,
 int32_t value,
 int32_t cycle
 )
{
 uint32_t diff;
 char cpl = 0;
 char neg = 0;


 if (cycle < 0) {
  cycle = - cycle;
  neg ^= 1;
  cpl ^= 1;
 }

 if (cycle > 1) {






  if (value >= pivot) {
   diff = int32_to_uint32_2cpl(value)
        - int32_to_uint32_2cpl(pivot);
  } else {
   diff = int32_to_uint32_2cpl(pivot)
        - int32_to_uint32_2cpl(value);
   cpl ^= 1;
  }
  diff %= (uint32_t)cycle;
  if (diff) {
   if (cpl)
    diff = (uint32_t)cycle - diff;
   if (neg)
    diff = ~diff + 1;
   pivot += uint32_2cpl_to_int32(diff);
  }
 }
 return pivot;
}
