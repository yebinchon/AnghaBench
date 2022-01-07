
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigevent {scalar_t__ sigev_notify; } ;
struct sigev_node {int dummy; } ;
struct aiocb {struct sigevent aio_sigevent; } ;
typedef int sigev_id_t ;


 scalar_t__ SIGEV_THREAD ;
 int __sigev_delete_node (struct sigev_node*) ;
 int __sigev_list_lock () ;
 int __sigev_list_unlock () ;
 int aio_sigev_alloc (int ,struct sigevent*,struct sigev_node**,struct sigevent*) ;
 int errno ;

__attribute__((used)) static int
aio_io(struct aiocb *iocb, int (*sysfunc)(struct aiocb *iocb))
{
 struct sigev_node *sn;
 struct sigevent saved_ev;
 int ret, err;

 if (iocb->aio_sigevent.sigev_notify != SIGEV_THREAD) {
  ret = sysfunc(iocb);
  return (ret);
 }

 ret = aio_sigev_alloc((sigev_id_t)iocb, &iocb->aio_sigevent, &sn,
         &saved_ev);
 if (ret)
  return (ret);
 ret = sysfunc(iocb);
 iocb->aio_sigevent = saved_ev;
 if (ret != 0) {
  err = errno;
  __sigev_list_lock();
  __sigev_delete_node(sn);
  __sigev_list_unlock();
  errno = err;
 }
 return (ret);
}
