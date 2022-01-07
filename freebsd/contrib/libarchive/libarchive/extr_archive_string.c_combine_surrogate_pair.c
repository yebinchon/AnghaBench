
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
combine_surrogate_pair(uint32_t uc, uint32_t uc2)
{
 uc -= 0xD800;
 uc *= 0x400;
 uc += uc2 - 0xDC00;
 uc += 0x10000;
 return (uc);
}
