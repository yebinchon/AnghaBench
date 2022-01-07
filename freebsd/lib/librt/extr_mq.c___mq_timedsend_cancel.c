
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
typedef int ssize_t ;
typedef TYPE_1__* mqd_t ;
struct TYPE_3__ {int oshandle; } ;


 int __sys_kmq_timedsend (int ,char*,size_t,unsigned int,struct timespec const*) ;
 int _pthread_cancel_enter (int) ;
 int _pthread_cancel_leave (int) ;

ssize_t
__mq_timedsend_cancel(mqd_t mqd, char *buf, size_t len,
 unsigned prio, const struct timespec *timeout)
{
 int ret;

 _pthread_cancel_enter(1);
 ret = __sys_kmq_timedsend(mqd->oshandle, buf, len, prio, timeout);
 _pthread_cancel_leave(ret == -1);
 return (ret);
}
