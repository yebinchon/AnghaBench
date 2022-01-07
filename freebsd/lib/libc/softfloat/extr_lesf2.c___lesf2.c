
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;
typedef scalar_t__ flag ;


 scalar_t__ float32_le (int ,int ) ;

flag
__lesf2(float32 a, float32 b)
{


 return 1 - float32_le(a, b);
}
