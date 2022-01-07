
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_mutex {int dummy; } ;
typedef struct pthread_mutex* pthread_mutex_t ;


 int EINVAL ;
 struct pthread_mutex* THR_MUTEX_DESTROYED ;
 struct pthread_mutex* THR_PSHARED_PTR ;
 scalar_t__ __predict_false (int) ;
 struct pthread_mutex* __thr_pshared_offpage (struct pthread_mutex**,int ) ;
 int _get_curthread () ;
 int init_static (int ,struct pthread_mutex**) ;
 int shared_mutex_init (struct pthread_mutex*,int *) ;

__attribute__((used)) static int
check_and_init_mutex(pthread_mutex_t *mutex, struct pthread_mutex **m)
{
 int ret;

 *m = *mutex;
 ret = 0;
 if (*m == THR_PSHARED_PTR) {
  *m = __thr_pshared_offpage(mutex, 0);
  if (*m == ((void*)0))
   ret = EINVAL;
  else
   shared_mutex_init(*m, ((void*)0));
 } else if (__predict_false(*m <= THR_MUTEX_DESTROYED)) {
  if (*m == THR_MUTEX_DESTROYED) {
   ret = EINVAL;
  } else {
   ret = init_static(_get_curthread(), mutex);
   if (ret == 0)
    *m = *mutex;
  }
 }
 return (ret);
}
