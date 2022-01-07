
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lwp {int dummy; } ;
struct TYPE_4__ {int vmobjlock; } ;


 int KTHREAD_MPSAFE ;
 int KTHREAD_MUSTJOIN ;
 int PRI_NONE ;
 int cv_init (int *,char*) ;
 int cv_wait (int *,int ) ;
 int kthread_create (int ,int,int *,int ,int *,struct lwp**,char*) ;
 int kthread_join (struct lwp*) ;
 int mutex_enter (int ) ;
 int mutex_exit (int ) ;
 int panic (char*,...) ;
 int tcv ;
 int * testpg ;
 int thread ;
 int threadrun ;
 TYPE_1__* uao_create (int,int ) ;
 TYPE_1__* uobj ;
 int uvm_page_unbusy (int **,int) ;
 int * uvm_pagealloc (TYPE_1__*,int ,int *,int ) ;

void
rumptest_busypage()
{
 struct lwp *newl;
 int rv;

 cv_init(&tcv, "napina");

 uobj = uao_create(1, 0);
 mutex_enter(uobj->vmobjlock);
 testpg = uvm_pagealloc(uobj, 0, ((void*)0), 0);
 mutex_exit(uobj->vmobjlock);
 if (testpg == ((void*)0))
  panic("couldn't create vm page");

 rv = kthread_create(PRI_NONE, KTHREAD_MUSTJOIN | KTHREAD_MPSAFE, ((void*)0),
     thread, ((void*)0), &newl, "jointest");
 if (rv)
  panic("thread creation failed: %d", rv);

 mutex_enter(uobj->vmobjlock);
 while (!threadrun)
  cv_wait(&tcv, uobj->vmobjlock);

 uvm_page_unbusy(&testpg, 1);
 mutex_exit(uobj->vmobjlock);

 rv = kthread_join(newl);
 if (rv)
  panic("thread join failed: %d", rv);

}
