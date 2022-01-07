
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ pcib_bit_get (scalar_t__*,scalar_t__) ;

__attribute__((used)) static inline uint32_t
pcib_map_check(uint32_t *map, uint32_t start, uint32_t bits)
{
 uint32_t i;

 for (i = start; i < start + bits; i++)
  if (pcib_bit_get(map, i))
   return (0);

 return (1);
}
