
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {size_t td_oncpu; } ;


 scalar_t__ DISPATCH_LEVEL ;
 scalar_t__ KeGetCurrentIrql () ;
 TYPE_1__* curthread ;
 int * disp_lock ;
 int mtx_unlock (int *) ;
 int panic (char*) ;
 int sched_unpin () ;

void
KfLowerIrql(uint8_t oldirql)
{
 if (oldirql == DISPATCH_LEVEL)
  return;

 if (KeGetCurrentIrql() != DISPATCH_LEVEL)
  panic("IRQL_NOT_GREATER_THAN");

 mtx_unlock(&disp_lock[curthread->td_oncpu]);
 sched_unpin();
}
