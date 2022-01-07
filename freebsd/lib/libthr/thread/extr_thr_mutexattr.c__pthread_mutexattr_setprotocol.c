
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutexattr_t ;
struct TYPE_3__ {int m_protocol; int m_ceiling; } ;


 int EINVAL ;
 int PTHREAD_PRIO_NONE ;
 int PTHREAD_PRIO_PROTECT ;
 int THR_MAX_RR_PRIORITY ;

int
_pthread_mutexattr_setprotocol(pthread_mutexattr_t *mattr, int protocol)
{
 int ret = 0;

 if (mattr == ((void*)0) || *mattr == ((void*)0) ||
     protocol < PTHREAD_PRIO_NONE || protocol > PTHREAD_PRIO_PROTECT)
  ret = EINVAL;
 else {
  (*mattr)->m_protocol = protocol;
  (*mattr)->m_ceiling = THR_MAX_RR_PRIORITY;
 }
 return (ret);
}
