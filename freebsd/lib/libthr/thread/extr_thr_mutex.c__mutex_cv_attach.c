
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_mutex {int m_count; } ;
struct pthread {int dummy; } ;


 struct pthread* _get_curthread () ;
 int enqueue_mutex (struct pthread*,struct pthread_mutex*,int ) ;

int
_mutex_cv_attach(struct pthread_mutex *m, int count)
{
 struct pthread *curthread;

 curthread = _get_curthread();
 enqueue_mutex(curthread, m, 0);
 m->m_count = count;
 return (0);
}
