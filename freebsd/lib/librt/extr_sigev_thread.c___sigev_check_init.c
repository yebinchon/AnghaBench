
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sigev_thread_init ;
 int _pthread_once (int *,int ) ;
 int have_threads () ;
 int * sigev_default_thread ;
 int sigev_once ;

int
__sigev_check_init(void)
{
 if (!have_threads())
  return (-1);

 _pthread_once(&sigev_once, __sigev_thread_init);
 return (sigev_default_thread != ((void*)0)) ? 0 : -1;
}
