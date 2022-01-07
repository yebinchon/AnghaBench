
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int td_pflags; } ;


 int TDP_NOFAULTING ;
 TYPE_1__* curthread ;

int
linux_in_atomic(void)
{

 return ((curthread->td_pflags & TDP_NOFAULTING) != 0);
}
