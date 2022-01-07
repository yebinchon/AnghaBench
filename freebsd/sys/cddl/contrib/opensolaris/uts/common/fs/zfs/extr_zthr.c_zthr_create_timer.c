
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zthr_state_lock; int zthr_thread; int zthr_wait_time; void* zthr_arg; int * zthr_func; int * zthr_checkfunc; int zthr_cv; int zthr_request_lock; } ;
typedef TYPE_1__ zthr_t ;
typedef int zthr_func_t ;
typedef int zthr_checkfunc_t ;
typedef int hrtime_t ;


 int CV_DEFAULT ;
 int KM_SLEEP ;
 int MUTEX_DEFAULT ;
 int TS_RUN ;
 int cv_init (int *,int *,int ,int *) ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int minclsyspri ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int mutex_init (int *,int *,int ,int *) ;
 int p0 ;
 int thread_create (int *,int ,int ,TYPE_1__*,int ,int *,int ,int ) ;
 int zthr_procedure ;

zthr_t *
zthr_create_timer(zthr_checkfunc_t *checkfunc, zthr_func_t *func,
    void *arg, hrtime_t max_sleep)
{
 zthr_t *t = kmem_zalloc(sizeof (*t), KM_SLEEP);
 mutex_init(&t->zthr_state_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 mutex_init(&t->zthr_request_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 cv_init(&t->zthr_cv, ((void*)0), CV_DEFAULT, ((void*)0));

 mutex_enter(&t->zthr_state_lock);
 t->zthr_checkfunc = checkfunc;
 t->zthr_func = func;
 t->zthr_arg = arg;
 t->zthr_wait_time = max_sleep;

 t->zthr_thread = thread_create(((void*)0), 0, zthr_procedure, t,
     0, &p0, TS_RUN, minclsyspri);
 mutex_exit(&t->zthr_state_lock);

 return (t);
}
