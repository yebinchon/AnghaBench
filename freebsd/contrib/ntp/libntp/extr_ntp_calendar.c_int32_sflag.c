
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int int32_t ;


 scalar_t__ UINT32_C (int ) ;

__attribute__((used)) static inline uint32_t
int32_sflag(
 const int32_t v)
{
 return UINT32_C(0) - (uint32_t)(v < 0);


}
