
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp {int dummy; } ;


 int IPL_NONE ;
 int KTHREAD_MPSAFE ;
 int KTHREAD_MUSTJOIN ;
 int MUTEX_DEFAULT ;
 int NTHREADS ;
 int PRI_NONE ;
 int kthread_create (int ,int,int *,int ,void*,struct lwp**,char*) ;
 int kthread_join (struct lwp*) ;
 int mutex_init (int *,int ,int ) ;
 int mymtx ;
 int panic (char*,int) ;
 int tinythread ;

void
rumptest_tsleep()
{
 struct lwp *notbigl[NTHREADS];
 int rv, i;

 mutex_init(&mymtx, MUTEX_DEFAULT, IPL_NONE);

 for (i = 0; i < NTHREADS; i++) {
  rv = kthread_create(PRI_NONE, KTHREAD_MUSTJOIN| KTHREAD_MPSAFE,
      ((void*)0), tinythread, (void *)(uintptr_t)i, &notbigl[i], "nb");
  if (rv)
   panic("thread create failed: %d", rv);
 }

 for (i = 0; i < NTHREADS; i++) {
  kthread_join(notbigl[i]);
 }
}
