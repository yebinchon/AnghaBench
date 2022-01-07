
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutexattr_t ;
struct TYPE_3__ {int m_type; } ;


 int EINVAL ;
 int PTHREAD_MUTEX_TYPE_MAX ;

int
_thr_mutexattr_settype(pthread_mutexattr_t *attr, int type)
{
 int ret;

 if (attr == ((void*)0) || *attr == ((void*)0) || type >= PTHREAD_MUTEX_TYPE_MAX) {
  ret = EINVAL;
 } else {
  (*attr)->m_type = type;
  ret = 0;
 }
 return (ret);
}
