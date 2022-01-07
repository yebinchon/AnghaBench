
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_flags; } ;
struct pthread_mutex {TYPE_1__ m_lock; } ;


 int TMQ_NORM ;
 int TMQ_NORM_PP ;
 int TMQ_ROBUST_PP ;
 int UMUTEX_PRIO_PROTECT ;
 scalar_t__ is_robust_mutex (struct pthread_mutex*) ;

__attribute__((used)) static int
mutex_qidx(struct pthread_mutex *m)
{

 if ((m->m_lock.m_flags & UMUTEX_PRIO_PROTECT) == 0)
  return (TMQ_NORM);
 return (is_robust_mutex(m) ? TMQ_ROBUST_PP : TMQ_NORM_PP);
}
