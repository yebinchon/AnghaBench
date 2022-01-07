
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int EBUSY ;
 int PJDLOG_ASSERT (int) ;
 int pthread_mutex_trylock (int *) ;

__attribute__((used)) static __inline bool
mtx_trylock(pthread_mutex_t *lock)
{
 int error;

 error = pthread_mutex_trylock(lock);
 PJDLOG_ASSERT(error == 0 || error == EBUSY);
 return (error == 0);
}
