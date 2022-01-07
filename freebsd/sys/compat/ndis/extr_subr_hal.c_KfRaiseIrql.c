
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
 int mtx_lock (int *) ;
 int panic (char*) ;
 int sched_pin () ;
 int sched_unpin () ;

uint8_t
KfRaiseIrql(uint8_t irql)
{
 uint8_t oldirql;

 sched_pin();
 oldirql = KeGetCurrentIrql();


 if (oldirql > irql)
  panic("IRQL_NOT_LESS_THAN_OR_EQUAL");

 if (oldirql != DISPATCH_LEVEL)
  mtx_lock(&disp_lock[curthread->td_oncpu]);
 else
  sched_unpin();



 return (oldirql);
}
