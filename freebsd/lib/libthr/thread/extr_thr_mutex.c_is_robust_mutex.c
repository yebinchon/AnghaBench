
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_flags; } ;
struct pthread_mutex {TYPE_1__ m_lock; } ;


 int UMUTEX_ROBUST ;

__attribute__((used)) static bool
is_robust_mutex(struct pthread_mutex *m)
{

 return ((m->m_lock.m_flags & UMUTEX_ROBUST) != 0);
}
