
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cv ;
 int cv_signal (int *) ;
 int kthread_exit (int ) ;
 int mtx ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int value ;

__attribute__((used)) static void
thethread(void *arg)
{

 mutex_enter(&mtx);
 value = 1;
 cv_signal(&cv);
 mutex_exit(&mtx);

 kthread_exit(0);
}
