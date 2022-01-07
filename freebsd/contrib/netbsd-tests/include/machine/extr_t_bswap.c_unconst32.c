
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ x32 ;

__attribute__((used)) static uint32_t
unconst32(uint32_t val)
{
 return val + x32;
}
