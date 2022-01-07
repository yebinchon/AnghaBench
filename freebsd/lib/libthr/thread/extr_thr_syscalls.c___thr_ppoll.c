
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct pthread {int dummy; } ;
struct pollfd {int dummy; } ;
typedef int sigset_t ;
typedef int nfds_t ;


 int __sys_ppoll (struct pollfd*,int ,struct timespec const*,int const*) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;

__attribute__((used)) static int
__thr_ppoll(struct pollfd pfd[], nfds_t nfds, const struct timespec *
    timeout, const sigset_t *newsigmask)
{
 struct pthread *curthread;
 int ret;

 curthread = _get_curthread();
 _thr_cancel_enter(curthread);
 ret = __sys_ppoll(pfd, nfds, timeout, newsigmask);
 _thr_cancel_leave(curthread, ret == -1);

 return (ret);
}
