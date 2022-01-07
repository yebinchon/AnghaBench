
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_mutex {int m_count; } ;


 int EOWNERDEAD ;
 int mutex_lock_common (struct pthread_mutex*,int *,int,int) ;

int
_mutex_cv_lock(struct pthread_mutex *m, int count, bool rb_onlist)
{
 int error;

 error = mutex_lock_common(m, ((void*)0), 1, rb_onlist);
 if (error == 0 || error == EOWNERDEAD)
  m->m_count = count;
 return (error);
}
