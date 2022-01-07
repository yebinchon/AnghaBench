
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int vmobjlock; } ;


 int PG_WANTED ;
 int UVM_UNLOCK_AND_WAIT (TYPE_2__*,int ,int,char*,int ) ;
 int cv_signal (int *) ;
 int kthread_exit (int ) ;
 int mutex_enter (int ) ;
 int tcv ;
 TYPE_2__* testpg ;
 int threadrun ;
 TYPE_1__* uobj ;

__attribute__((used)) static void
thread(void *arg)
{

 mutex_enter(uobj->vmobjlock);
 threadrun = 1;
 cv_signal(&tcv);
 testpg->flags |= PG_WANTED;
 UVM_UNLOCK_AND_WAIT(testpg, uobj->vmobjlock, 0, "tw", 0);
 kthread_exit(0);
}
