
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_mutex {int m_lock; } ;
struct pthread {uintptr_t inact_mtx; } ;


 int PANIC (char*) ;
 scalar_t__ __predict_false (int) ;
 int is_robust_mutex (struct pthread_mutex*) ;
 int mutex_init_robust (struct pthread*) ;

int
_mutex_enter_robust(struct pthread *curthread, struct pthread_mutex *m)
{





 if (!is_robust_mutex(m))
  return (0);

 mutex_init_robust(curthread);
 curthread->inact_mtx = (uintptr_t)&m->m_lock;
 return (1);
}
