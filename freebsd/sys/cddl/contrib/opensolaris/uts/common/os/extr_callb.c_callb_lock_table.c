
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ct_busy; int ct_lock; } ;


 int ASSERT (int) ;
 TYPE_1__* ct ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
callb_lock_table(void)
{
 mutex_enter(&ct->ct_lock);
 ASSERT(ct->ct_busy == 0);
 ct->ct_busy = 1;
 mutex_exit(&ct->ct_lock);
}
