
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
_pthread_mutexattr_gettype(const pthread_mutexattr_t * __restrict attr,
    int * __restrict type)
{
 int ret;

 if (attr == ((void*)0) || *attr == ((void*)0) || (*attr)->m_type >=
     PTHREAD_MUTEX_TYPE_MAX) {
  ret = EINVAL;
 } else {
  *type = (*attr)->m_type;
  ret = 0;
 }
 return (ret);
}
