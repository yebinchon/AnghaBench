
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp {int dummy; } ;


 int IPL_NONE ;
 int KTHREAD_MPSAFE ;
 int MUTEX_DEFAULT ;
 int PRI_NONE ;
 int cv ;
 int cv_init (int *,char*) ;
 int cv_wait (int *,int *) ;
 int kpause (char*,int,int,int *) ;
 int kthread_create (int ,int ,int *,int ,int *,struct lwp**,char*) ;
 int mtx ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int mutex_init (int *,int ,int ) ;
 int panic (char*,int) ;
 int thethread ;
 scalar_t__ value ;

void
rumptest_thread()
{
 struct lwp *newl;
 int rv;

 mutex_init(&mtx, MUTEX_DEFAULT, IPL_NONE);
 cv_init(&cv, "jooei");
 rv = kthread_create(PRI_NONE, KTHREAD_MPSAFE, ((void*)0),
     thethread, ((void*)0), &newl, "ktest");
 if (rv)
  panic("thread creation failed: %d", rv);

 mutex_enter(&mtx);
 while (value == 0)
  cv_wait(&cv, &mtx);
 mutex_exit(&mtx);


 kpause("take1", 0, 1, ((void*)0));
}
