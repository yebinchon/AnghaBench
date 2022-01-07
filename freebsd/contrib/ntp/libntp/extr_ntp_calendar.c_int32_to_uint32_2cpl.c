
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ int32_t ;



__attribute__((used)) static inline uint32_t
int32_to_uint32_2cpl(
 const int32_t v)
{
 uint32_t vu;
 if (v < 0)
  vu = ~(uint32_t)(-(v + 1));
 else
  vu = (uint32_t)v;



 return vu;
}
