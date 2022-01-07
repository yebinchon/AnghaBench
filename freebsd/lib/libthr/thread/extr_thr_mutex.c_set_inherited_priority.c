
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* m_ceilings; } ;
struct pthread_mutex {TYPE_1__ m_lock; } ;
struct pthread {int * mq; } ;


 struct pthread_mutex* TAILQ_LAST (int *,int ) ;
 size_t mutex_qidx (struct pthread_mutex*) ;
 int mutex_queue ;

__attribute__((used)) static void
set_inherited_priority(struct pthread *curthread, struct pthread_mutex *m)
{
 struct pthread_mutex *m2;

 m2 = TAILQ_LAST(&curthread->mq[mutex_qidx(m)], mutex_queue);
 if (m2 != ((void*)0))
  m->m_lock.m_ceilings[1] = m2->m_lock.m_ceilings[0];
 else
  m->m_lock.m_ceilings[1] = -1;
}
