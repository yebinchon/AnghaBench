
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_mutex {int m_spinloops; } ;
typedef int pthread_mutex_t ;


 int check_and_init_mutex (int *,struct pthread_mutex**) ;

int
__pthread_mutex_setspinloops_np(pthread_mutex_t *mutex, int count)
{
 struct pthread_mutex *m;
 int ret;

 ret = check_and_init_mutex(mutex, &m);
 if (ret == 0)
  m->m_spinloops = count;
 return (ret);
}
