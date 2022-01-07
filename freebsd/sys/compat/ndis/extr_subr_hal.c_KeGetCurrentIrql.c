
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {size_t td_oncpu; } ;


 int DISPATCH_LEVEL ;
 int PASSIVE_LEVEL ;
 TYPE_1__* curthread ;
 int * disp_lock ;
 scalar_t__ mtx_owned (int *) ;

uint8_t
KeGetCurrentIrql()
{
 if (mtx_owned(&disp_lock[curthread->td_oncpu]))
  return (DISPATCH_LEVEL);
 return (PASSIVE_LEVEL);
}
