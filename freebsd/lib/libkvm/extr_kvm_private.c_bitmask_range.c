
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ BITS_IN (scalar_t__) ;

__attribute__((used)) static uint64_t
bitmask_range(uint64_t v, uint64_t bit0, uint64_t bitN)
{
 if (bit0 == 0 && bitN == BITS_IN(v))
  return (v);

 return (v & (((1ULL << (bitN - bit0)) - 1ULL) << bit0));
}
