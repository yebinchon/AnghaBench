
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_2__ {scalar_t__ sigev_notify; } ;
struct aiocb {TYPE_1__ aio_sigevent; } ;
typedef int ssize_t ;
typedef int sigev_id_t ;


 scalar_t__ SIGEV_THREAD ;
 int SI_ASYNCIO ;
 int __sigev_delete (int ,int ) ;
 int __sigev_list_lock () ;
 int __sigev_list_unlock () ;
 int __sys_aio_waitcomplete (struct aiocb**,struct timespec*) ;
 int errno ;

ssize_t
__aio_waitcomplete(struct aiocb **iocbp, struct timespec *timeout)
{
 ssize_t ret;
 int err;

 ret = __sys_aio_waitcomplete(iocbp, timeout);
 if (*iocbp) {
  if ((*iocbp)->aio_sigevent.sigev_notify == SIGEV_THREAD) {
   err = errno;
   __sigev_list_lock();
   __sigev_delete(SI_ASYNCIO, (sigev_id_t)(*iocbp));
   __sigev_list_unlock();
   errno = err;
  }
 }

 return (ret);
}
