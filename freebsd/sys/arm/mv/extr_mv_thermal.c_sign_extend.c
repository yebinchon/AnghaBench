
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;



__attribute__((used)) static inline int32_t sign_extend(uint32_t value, int index)
{
 uint8_t shift;

 shift = 31 - index;
 return ((int32_t)(value << shift) >> shift);
}
