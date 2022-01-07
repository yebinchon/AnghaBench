
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ td_oncpu; } ;


 TYPE_1__* curthread ;

uint32_t
KeGetCurrentProcessorNumber(void)
{
 return ((uint32_t)curthread->td_oncpu);
}
