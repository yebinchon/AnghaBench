
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 scalar_t__ ntohs (int) ;

uint16_t
in_cksum_shouldbe(uint16_t sum, uint16_t computed_sum)
{
 uint32_t shouldbe;
 shouldbe = sum;
 shouldbe += ntohs(computed_sum);
 shouldbe = (shouldbe & 0xFFFF) + (shouldbe >> 16);
 shouldbe = (shouldbe & 0xFFFF) + (shouldbe >> 16);
 return shouldbe;
}
