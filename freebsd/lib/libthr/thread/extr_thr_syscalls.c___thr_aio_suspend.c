
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct pthread {int dummy; } ;
struct aiocb {int dummy; } ;


 int __sys_aio_suspend (struct aiocb const* const*,int,struct timespec const*) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;

__attribute__((used)) static int
__thr_aio_suspend(const struct aiocb * const iocbs[], int niocb, const struct
    timespec *timeout)
{
 struct pthread *curthread;
 int ret;

 curthread = _get_curthread();
 _thr_cancel_enter(curthread);
 ret = __sys_aio_suspend(iocbs, niocb, timeout);
 _thr_cancel_leave(curthread, 1);

 return (ret);
}
