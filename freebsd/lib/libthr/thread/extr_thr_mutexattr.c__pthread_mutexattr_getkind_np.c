
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutexattr_t ;
struct TYPE_3__ {int m_type; } ;


 int EINVAL ;
 int errno ;

int
_pthread_mutexattr_getkind_np(pthread_mutexattr_t attr)
{
 int ret;

 if (attr == ((void*)0)) {
  errno = EINVAL;
  ret = -1;
 } else {
  ret = attr->m_type;
 }
 return (ret);
}
