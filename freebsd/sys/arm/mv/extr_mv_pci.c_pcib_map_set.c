
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int pcib_bit_set (scalar_t__*,scalar_t__) ;

__attribute__((used)) static inline void
pcib_map_set(uint32_t *map, uint32_t start, uint32_t bits)
{
 uint32_t i;

 for (i = start; i < start + bits; i++)
  pcib_bit_set(map, i);
}
