
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int
evthread_posix_unlock(unsigned mode, void *lock_)
{
 pthread_mutex_t *lock = lock_;
 return pthread_mutex_unlock(lock);
}
