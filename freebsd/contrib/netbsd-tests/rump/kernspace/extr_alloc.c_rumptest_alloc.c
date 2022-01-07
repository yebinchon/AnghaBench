
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPL_NONE ;
 int KTHREAD_MPSAFE ;
 int MUTEX_DEFAULT ;
 int PRI_NONE ;
 int PR_NOWAIT ;
 int PR_WAITOK ;
 int __arraycount (char**) ;
 scalar_t__ curstat ;
 int cv_init (int *,char*) ;
 int cv_signal (int *) ;
 int cv_wait (int *,int *) ;
 int hthr ;
 int kcv ;
 int kthread_create (int ,int ,int *,int ,int *,int *,char*) ;
 int mtx ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int mutex_init (int *,int ,int ) ;
 int panic (char*) ;
 int pool_allocator_nointr ;
 char* pool_get (int *,int ) ;
 int pool_init (int *,int,int ,int ,int ,char*,int *,int ) ;
 int pp1 ;
 int pp2 ;
 char** store ;

void
rumptest_alloc(size_t thelimit)
{
 char *c;
 int succ, i;

 mutex_init(&mtx, MUTEX_DEFAULT, IPL_NONE);
 cv_init(&kcv, "venailu");

 kthread_create(PRI_NONE, KTHREAD_MPSAFE, ((void*)0), hthr, ((void*)0), ((void*)0), "h");

 pool_init(&pp1, 1024, 0, 0, 0, "vara-allas",
     &pool_allocator_nointr, IPL_NONE);
 pool_init(&pp2, 1024, 0, 0, 0, "allas",
     &pool_allocator_nointr, IPL_NONE);

 for (i = 0; i < __arraycount(store); i++) {
  store[i] = pool_get(&pp1, PR_NOWAIT);
  if (store[i] == ((void*)0)) {
   panic("pool_get store failed");
  }
 }


 mutex_enter(&mtx);
 while (curstat == 0)
  cv_wait(&kcv, &mtx);
 mutex_exit(&mtx);

 for (succ = 0;; succ++) {
  if (succ * 1024 > thelimit)
   panic("managed to allocate over limit");
  if ((c = pool_get(&pp2, PR_NOWAIT)) == ((void*)0)) {
   mutex_enter(&mtx);
   curstat++;
   cv_signal(&kcv);
   mutex_exit(&mtx);
   if (pool_get(&pp2, PR_WAITOK) == ((void*)0))
    panic("pool get PR_WAITOK failed");
   break;
  }
  *c = 'a';
 }
}
