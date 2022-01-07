
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 size_t BITS_PER_UINT32 ;

__attribute__((used)) static inline uint32_t
pcib_bit_get(uint32_t *map, uint32_t bit)
{
 uint32_t n = bit / BITS_PER_UINT32;

 bit = bit % BITS_PER_UINT32;
 return (map[n] & (1 << bit));
}
