
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
set_masked(uint32_t val, uint32_t v, uint32_t shift, uint32_t width)
{

 val &= ~(((1 << width) - 1) << shift);
 val |= (v & ((1 << width) - 1)) << shift;
 return (val);
}
