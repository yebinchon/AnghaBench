
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp {int dummy; } ;


 int KTHREAD_MPSAFE ;
 int KTHREAD_MUSTJOIN ;
 int PRI_NONE ;
 int jointhread ;
 int kthread_create (int ,int,int *,int ,int *,struct lwp**,char*) ;
 int kthread_join (struct lwp*) ;
 int panic (char*,...) ;
 int testit ;

void
rumptest_threadjoin()
{
 struct lwp *newl;
 int rv;

 rv = kthread_create(PRI_NONE, KTHREAD_MUSTJOIN | KTHREAD_MPSAFE, ((void*)0),
     jointhread, ((void*)0), &newl, "jointest");
 if (rv)
  panic("thread creation failed: %d", rv);
 rv = kthread_join(newl);
 if (rv)
  panic("thread join failed: %d", rv);

 if (testit != 1)
  panic("new thread did not run");
}
