
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_mutex {int m_count; } ;


 int mutex_unlock_common (struct pthread_mutex*,int,int*) ;

int
_mutex_cv_unlock(struct pthread_mutex *m, int *count, int *defer)
{




 *count = m->m_count;
 m->m_count = 0;
 (void)mutex_unlock_common(m, 1, defer);
        return (0);
}
