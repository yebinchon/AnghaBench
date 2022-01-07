
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int int32_t ;


 scalar_t__ const INT32_MAX ;

__attribute__((used)) static inline int32_t
uint32_2cpl_to_int32(
 const uint32_t vu)
{
 int32_t v;
 if (vu > INT32_MAX)
  v = -(int32_t)(~vu) - 1;
 else
  v = (int32_t)vu;



 return v;
}
