
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cl_timer_prov_t ;
typedef int cl_status_t ;
struct TYPE_4__ {int thread; int cond; int mutex; int queue; } ;


 int CL_ASSERT (int ) ;
 int CL_ERROR ;
 int CL_INSUFFICIENT_MEMORY ;
 int CL_SUCCESS ;
 int __cl_timer_prov_cb ;
 int __cl_timer_prov_destroy () ;
 int cl_qlist_init (int *) ;
 TYPE_1__* gp_timer_prov ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int pthread_cond_init (int *,int *) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 int pthread_mutex_init (int *,int *) ;

cl_status_t __cl_timer_prov_create(void)
{
 CL_ASSERT(gp_timer_prov == ((void*)0));

 gp_timer_prov = malloc(sizeof(cl_timer_prov_t));
 if (!gp_timer_prov)
  return (CL_INSUFFICIENT_MEMORY);
 else
  memset(gp_timer_prov, 0, sizeof(cl_timer_prov_t));

 cl_qlist_init(&gp_timer_prov->queue);

 pthread_mutex_init(&gp_timer_prov->mutex, ((void*)0));
 pthread_cond_init(&gp_timer_prov->cond, ((void*)0));

 if (pthread_create(&gp_timer_prov->thread, ((void*)0),
      __cl_timer_prov_cb, ((void*)0))) {
  __cl_timer_prov_destroy();
  return (CL_ERROR);
 }

 return (CL_SUCCESS);
}
