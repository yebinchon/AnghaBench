
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cnd_t ;


 scalar_t__ pthread_cond_signal (int *) ;
 int thrd_error ;
 int thrd_success ;

int
cnd_signal(cnd_t *cond)
{

 if (pthread_cond_signal(cond) != 0)
  return (thrd_error);
 return (thrd_success);
}
