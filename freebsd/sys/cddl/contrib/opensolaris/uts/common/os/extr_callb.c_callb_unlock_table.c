
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ct_busy; int ct_lock; int ct_busy_cv; } ;


 int ASSERT (int) ;
 TYPE_1__* ct ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
callb_unlock_table(void)
{
 mutex_enter(&ct->ct_lock);
 ASSERT(ct->ct_busy != 0);
 ct->ct_busy = 0;
 cv_broadcast(&ct->ct_busy_cv);
 mutex_exit(&ct->ct_lock);
}
