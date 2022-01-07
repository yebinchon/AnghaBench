
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcb {int dummy; } ;


 int ARM_SET_TP ;
 scalar_t__ ARM_TP_ADDRESS ;
 int sysarch (int ,void*) ;

void
_set_tp(void *tp)
{




 sysarch(ARM_SET_TP, tp);

}
