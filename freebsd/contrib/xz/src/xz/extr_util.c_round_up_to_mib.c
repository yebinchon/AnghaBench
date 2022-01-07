
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int UINT32_C (int) ;

extern uint64_t
round_up_to_mib(uint64_t n)
{
 return (n >> 20) + ((n & ((UINT32_C(1) << 20) - 1)) != 0);
}
