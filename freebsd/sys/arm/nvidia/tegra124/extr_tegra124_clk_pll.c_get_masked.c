
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
get_masked(uint32_t val, uint32_t shift, uint32_t width)
{

 return ((val >> shift) & ((1 << width) - 1));
}
