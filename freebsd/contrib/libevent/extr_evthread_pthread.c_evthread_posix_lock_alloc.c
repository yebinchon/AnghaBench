
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutexattr_t ;
typedef void pthread_mutex_t ;


 unsigned int EVTHREAD_LOCKTYPE_RECURSIVE ;
 int attr_recursive ;
 int mm_free (void*) ;
 void* mm_malloc (int) ;
 scalar_t__ pthread_mutex_init (void*,int *) ;

__attribute__((used)) static void *
evthread_posix_lock_alloc(unsigned locktype)
{
 pthread_mutexattr_t *attr = ((void*)0);
 pthread_mutex_t *lock = mm_malloc(sizeof(pthread_mutex_t));
 if (!lock)
  return ((void*)0);
 if (locktype & EVTHREAD_LOCKTYPE_RECURSIVE)
  attr = &attr_recursive;
 if (pthread_mutex_init(lock, attr)) {
  mm_free(lock);
  return ((void*)0);
 }
 return lock;
}
