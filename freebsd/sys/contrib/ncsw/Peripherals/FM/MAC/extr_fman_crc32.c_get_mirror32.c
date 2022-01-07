
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 scalar_t__ get_mirror8 (int ) ;

__attribute__((used)) static inline uint32_t get_mirror32(uint32_t n)
{
 return ((uint32_t)get_mirror8((uint8_t)(n))<<24) |
  ((uint32_t)get_mirror8((uint8_t)(n>>8))<<16) |
  ((uint32_t)get_mirror8((uint8_t)(n>>16))<<8) |
  ((uint32_t)get_mirror8((uint8_t)(n>>24)));
}
