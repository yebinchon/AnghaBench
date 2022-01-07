
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_3__ {int cond; int mutex; int exit; int thread; } ;


 int TRUE ;
 int free (TYPE_1__*) ;
 TYPE_1__* gp_timer_prov ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_destroy (int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void __cl_timer_prov_destroy(void)
{
 pthread_t tid;

 if (!gp_timer_prov)
  return;

 tid = gp_timer_prov->thread;
 pthread_mutex_lock(&gp_timer_prov->mutex);
 gp_timer_prov->exit = TRUE;
 pthread_cond_broadcast(&gp_timer_prov->cond);
 pthread_mutex_unlock(&gp_timer_prov->mutex);
 pthread_join(tid, ((void*)0));


 pthread_mutex_destroy(&gp_timer_prov->mutex);
 pthread_cond_destroy(&gp_timer_prov->cond);


 free(gp_timer_prov);
 gp_timer_prov = ((void*)0);
}
