
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
typedef int pthread_t ;


 int _pthread_getschedparam (int ,int*,struct sched_param*) ;
 int errno ;

int
_pthread_getprio(pthread_t pthread)
{
 int policy, ret;
 struct sched_param param;

 if ((ret = _pthread_getschedparam(pthread, &policy, &param)) == 0)
  ret = param.sched_priority;
 else {

  errno = ret;
  ret = -1;
 }


 return (ret);
}
