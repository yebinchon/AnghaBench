
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutexattr_t ;
struct TYPE_3__ {int m_protocol; } ;


 int EINVAL ;

int
_pthread_mutexattr_getprotocol(const pthread_mutexattr_t * __restrict mattr,
    int * __restrict protocol)
{
 int ret = 0;

 if (mattr == ((void*)0) || *mattr == ((void*)0))
  ret = EINVAL;
 else
  *protocol = (*mattr)->m_protocol;

 return (ret);
}
