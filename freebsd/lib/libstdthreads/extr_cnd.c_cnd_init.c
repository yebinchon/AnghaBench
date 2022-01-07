
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cnd_t ;



 int pthread_cond_init (int *,int *) ;
 int thrd_error ;
 int thrd_nomem ;
 int thrd_success ;

int
cnd_init(cnd_t *cond)
{

 switch (pthread_cond_init(cond, ((void*)0))) {
 case 0:
  return (thrd_success);
 case 128:
  return (thrd_nomem);
 default:
  return (thrd_error);
 }
}
