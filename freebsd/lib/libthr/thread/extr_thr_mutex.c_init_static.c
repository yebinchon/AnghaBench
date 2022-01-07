
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;
typedef scalar_t__ pthread_mutex_t ;


 scalar_t__ THR_ADAPTIVE_MUTEX_INITIALIZER ;
 int THR_LOCK_ACQUIRE (struct pthread*,int *) ;
 int THR_LOCK_RELEASE (struct pthread*,int *) ;
 scalar_t__ THR_MUTEX_INITIALIZER ;
 int __thr_calloc ;
 int _mutex_static_lock ;
 int _pthread_mutexattr_adaptive_default ;
 int _pthread_mutexattr_default ;
 int mutex_init (scalar_t__*,int *,int ) ;

__attribute__((used)) static int
init_static(struct pthread *thread, pthread_mutex_t *mutex)
{
 int ret;

 THR_LOCK_ACQUIRE(thread, &_mutex_static_lock);

 if (*mutex == THR_MUTEX_INITIALIZER)
  ret = mutex_init(mutex, &_pthread_mutexattr_default,
      __thr_calloc);
 else if (*mutex == THR_ADAPTIVE_MUTEX_INITIALIZER)
  ret = mutex_init(mutex, &_pthread_mutexattr_adaptive_default,
      __thr_calloc);
 else
  ret = 0;
 THR_LOCK_RELEASE(thread, &_mutex_static_lock);

 return (ret);
}
