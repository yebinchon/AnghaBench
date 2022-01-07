
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sigev_notify; } ;
struct aiocb {TYPE_1__ aio_sigevent; } ;
typedef int ssize_t ;
typedef int sigev_id_t ;


 scalar_t__ EINPROGRESS ;
 int EINVAL ;
 scalar_t__ SIGEV_THREAD ;
 int SI_ASYNCIO ;
 int __sigev_delete (int ,int ) ;
 int __sigev_list_lock () ;
 int __sigev_list_unlock () ;
 scalar_t__ __sys_aio_error (struct aiocb*) ;
 int __sys_aio_return (struct aiocb*) ;
 int errno ;

ssize_t
__aio_return(struct aiocb *iocb)
{

 if (iocb->aio_sigevent.sigev_notify == SIGEV_THREAD) {
  if (__sys_aio_error(iocb) == EINPROGRESS) {





   errno = EINVAL;
   return (-1);
  }
  __sigev_list_lock();
  __sigev_delete(SI_ASYNCIO, (sigev_id_t)iocb);
  __sigev_list_unlock();
 }

 return __sys_aio_return(iocb);
}
