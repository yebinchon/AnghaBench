
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zthr_request_lock; int zthr_state_lock; int zthr_cv; } ;
typedef TYPE_1__ zthr_t ;


 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
zthr_wakeup(zthr_t *t)
{
 mutex_enter(&t->zthr_request_lock);
 mutex_enter(&t->zthr_state_lock);
 cv_broadcast(&t->zthr_cv);

 mutex_exit(&t->zthr_state_lock);
 mutex_exit(&t->zthr_request_lock);
}
