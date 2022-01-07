
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct pthread {int dummy; } ;
typedef int sigset_t ;
typedef int fd_set ;


 int __sys_pselect (int,int *,int *,int *,struct timespec const*,int const*) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;

__attribute__((used)) static int
__thr_pselect(int count, fd_set *rfds, fd_set *wfds, fd_set *efds,
 const struct timespec *timo, const sigset_t *mask)
{
 struct pthread *curthread;
 int ret;

 curthread = _get_curthread();
 _thr_cancel_enter(curthread);
 ret = __sys_pselect(count, rfds, wfds, efds, timo, mask);
 _thr_cancel_leave(curthread, ret == -1);

 return (ret);
}
