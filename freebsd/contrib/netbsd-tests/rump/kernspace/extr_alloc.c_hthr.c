
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int VM_MAP_WANTVA ;
 int __arraycount (int *) ;
 int curstat ;
 int cv_signal (int *) ;
 int cv_wait (int *,int *) ;
 int kcv ;
 TYPE_1__* kernel_map ;
 int kpause (char*,int,int,int *) ;
 int kthread_exit (int ) ;
 int mtx ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int pool_put (int *,int ) ;
 int pp1 ;
 int * store ;

__attribute__((used)) static void
hthr(void *arg)
{
 int i;

 mutex_enter(&mtx);
 curstat++;
 cv_signal(&kcv);

 while (curstat < 2)
  cv_wait(&kcv, &mtx);
 mutex_exit(&mtx);


 while ((kernel_map->flags & VM_MAP_WANTVA) == 0)
  kpause("take5", 0, 1, ((void*)0));

 for (i = 0; i < __arraycount(store); i++) {
  pool_put(&pp1, store[i]);
 }

 kthread_exit(0);
}
