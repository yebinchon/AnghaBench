
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thrd_t ;
typedef int thrd_start_t ;
struct thrd_param {void* arg; int func; } ;


 int free (struct thrd_param*) ;
 struct thrd_param* malloc (int) ;
 scalar_t__ pthread_create (int *,int *,int ,struct thrd_param*) ;
 int thrd_entry ;
 int thrd_error ;
 int thrd_nomem ;
 int thrd_success ;

int
thrd_create(thrd_t *thr, thrd_start_t func, void *arg)
{
 struct thrd_param *tp;





 tp = malloc(sizeof(*tp));
 if (tp == ((void*)0))
  return (thrd_nomem);
 tp->func = func;
 tp->arg = arg;
 if (pthread_create(thr, ((void*)0), thrd_entry, tp) != 0) {
  free(tp);
  return (thrd_error);
 }
 return (thrd_success);
}
