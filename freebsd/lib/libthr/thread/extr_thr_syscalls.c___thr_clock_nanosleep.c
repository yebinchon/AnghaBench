
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct pthread {int dummy; } ;
typedef int clockid_t ;


 int __sys_clock_nanosleep (int ,int,struct timespec const*,struct timespec*) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;

__attribute__((used)) static int
__thr_clock_nanosleep(clockid_t clock_id, int flags,
    const struct timespec *time_to_sleep, struct timespec *time_remaining)
{
 struct pthread *curthread;
 int ret;

 curthread = _get_curthread();
 _thr_cancel_enter(curthread);
 ret = __sys_clock_nanosleep(clock_id, flags, time_to_sleep,
     time_remaining);
 _thr_cancel_leave(curthread, 1);

 return (ret);
}
