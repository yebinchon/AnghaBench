
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_cond_t ;


 int pthread_cond_broadcast (int *) ;
 int pthread_cond_signal (int *) ;

__attribute__((used)) static int
evthread_posix_cond_signal(void *cond_, int broadcast)
{
 pthread_cond_t *cond = cond_;
 int r;
 if (broadcast)
  r = pthread_cond_broadcast(cond);
 else
  r = pthread_cond_signal(cond);
 return r ? -1 : 0;
}
