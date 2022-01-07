
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 scalar_t__ pthread_mutex_isowned_np (int *) ;

__attribute__((used)) static __inline bool
mtx_owned(pthread_mutex_t *lock)
{

 return (pthread_mutex_isowned_np(lock) != 0);
}
