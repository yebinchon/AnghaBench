
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mtx_t ;


 scalar_t__ pthread_mutex_lock (int *) ;
 int thrd_error ;
 int thrd_success ;

int
mtx_lock(mtx_t *mtx)
{

 if (pthread_mutex_lock(mtx) != 0)
  return (thrd_error);
 return (thrd_success);
}
