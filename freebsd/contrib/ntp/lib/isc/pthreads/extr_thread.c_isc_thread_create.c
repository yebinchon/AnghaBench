
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_attr_t ;
typedef int isc_threadfunc_t ;
typedef int isc_threadarg_t ;
typedef int isc_thread_t ;
typedef int isc_result_t ;


 int ISC_R_SUCCESS ;
 int ISC_R_UNEXPECTED ;
 int PTHREAD_SCOPE_SYSTEM ;
 size_t THREAD_MINSTACKSIZE ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_getstacksize (int *,size_t*) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setscope (int *,int ) ;
 int pthread_attr_setstacksize (int *,size_t) ;
 int pthread_create (int *,int *,int ,int ) ;

isc_result_t
isc_thread_create(isc_threadfunc_t func, isc_threadarg_t arg,
    isc_thread_t *thread)
{
 pthread_attr_t attr;
 size_t stacksize;
 int ret;

 pthread_attr_init(&attr);
 ret = pthread_create(thread, &attr, func, arg);
 if (ret != 0)
  return (ISC_R_UNEXPECTED);

 pthread_attr_destroy(&attr);

 return (ISC_R_SUCCESS);
}
