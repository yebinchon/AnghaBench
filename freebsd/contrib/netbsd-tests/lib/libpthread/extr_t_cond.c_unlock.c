
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
unlock(void *arg)
{
 pthread_mutex_unlock((pthread_mutex_t *)arg);
}
