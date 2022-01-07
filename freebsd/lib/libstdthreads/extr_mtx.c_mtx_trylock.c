
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mtx_t ;



 int pthread_mutex_trylock (int *) ;
 int thrd_busy ;
 int thrd_error ;
 int thrd_success ;

int
mtx_trylock(mtx_t *mtx)
{

 switch (pthread_mutex_trylock(mtx)) {
 case 0:
  return (thrd_success);
 case 128:
  return (thrd_busy);
 default:
  return (thrd_error);
 }
}
