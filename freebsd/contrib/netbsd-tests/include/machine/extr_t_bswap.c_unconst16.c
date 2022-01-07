
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ x16 ;

__attribute__((used)) static uint16_t
unconst16(uint16_t val)
{
 return val + x16;
}
