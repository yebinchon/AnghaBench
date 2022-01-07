
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct pthread {int dummy; } ;
struct kevent {int dummy; } ;


 int __sys_kevent (int,struct kevent const*,int,struct kevent*,int,struct timespec const*) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;

__attribute__((used)) static int
__thr_kevent(int kq, const struct kevent *changelist, int nchanges,
    struct kevent *eventlist, int nevents, const struct timespec *timeout)
{
 struct pthread *curthread;
 int ret;

 if (nevents == 0) {



  return (__sys_kevent(kq, changelist, nchanges, eventlist,
      nevents, timeout));
 }
 curthread = _get_curthread();
 _thr_cancel_enter(curthread);
 ret = __sys_kevent(kq, changelist, nchanges, eventlist, nevents,
     timeout);
 _thr_cancel_leave(curthread, ret == -1 && nchanges == 0);

 return (ret);
}
