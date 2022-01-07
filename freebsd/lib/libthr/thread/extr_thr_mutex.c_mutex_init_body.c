
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pthread_mutex_attr {int m_protocol; scalar_t__ m_pshared; scalar_t__ m_robust; int m_ceiling; int m_type; } ;
struct TYPE_2__ {int m_flags; int * m_ceilings; void* m_owner; } ;
struct pthread_mutex {scalar_t__ m_yieldloops; scalar_t__ m_spinloops; int m_flags; TYPE_1__ m_lock; scalar_t__ m_count; } ;


 scalar_t__ MUTEX_ADAPTIVE_SPINS ;
 scalar_t__ PMUTEX_TYPE (int ) ;
 scalar_t__ PTHREAD_MUTEX_ADAPTIVE_NP ;
 scalar_t__ PTHREAD_MUTEX_ROBUST ;



 scalar_t__ PTHREAD_PROCESS_SHARED ;
 void* UMUTEX_CONTESTED ;
 int UMUTEX_PRIO_INHERIT ;
 int UMUTEX_PRIO_PROTECT ;
 int UMUTEX_ROBUST ;
 void* UMUTEX_UNOWNED ;
 int USYNC_PROCESS_SHARED ;
 scalar_t__ _thr_spinloops ;
 scalar_t__ _thr_yieldloops ;
 int mutex_init_link (struct pthread_mutex*) ;
 int mutex_init_robust (int *) ;

__attribute__((used)) static void
mutex_init_body(struct pthread_mutex *pmutex,
    const struct pthread_mutex_attr *attr)
{

 pmutex->m_flags = attr->m_type;
 pmutex->m_count = 0;
 pmutex->m_spinloops = 0;
 pmutex->m_yieldloops = 0;
 mutex_init_link(pmutex);
 switch (attr->m_protocol) {
 case 129:
  pmutex->m_lock.m_owner = UMUTEX_UNOWNED;
  pmutex->m_lock.m_flags = 0;
  break;
 case 130:
  pmutex->m_lock.m_owner = UMUTEX_UNOWNED;
  pmutex->m_lock.m_flags = UMUTEX_PRIO_INHERIT;
  break;
 case 128:
  pmutex->m_lock.m_owner = UMUTEX_CONTESTED;
  pmutex->m_lock.m_flags = UMUTEX_PRIO_PROTECT;
  pmutex->m_lock.m_ceilings[0] = attr->m_ceiling;
  break;
 }
 if (attr->m_pshared == PTHREAD_PROCESS_SHARED)
  pmutex->m_lock.m_flags |= USYNC_PROCESS_SHARED;
 if (attr->m_robust == PTHREAD_MUTEX_ROBUST) {
  mutex_init_robust(((void*)0));
  pmutex->m_lock.m_flags |= UMUTEX_ROBUST;
 }
 if (PMUTEX_TYPE(pmutex->m_flags) == PTHREAD_MUTEX_ADAPTIVE_NP) {
  pmutex->m_spinloops =
      _thr_spinloops ? _thr_spinloops: MUTEX_ADAPTIVE_SPINS;
  pmutex->m_yieldloops = _thr_yieldloops;
 }
}
