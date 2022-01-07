
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct pthread {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int socklen_t ;


 scalar_t__ __sys_sendto (int,void const*,size_t,int,struct sockaddr const*,int ) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;

__attribute__((used)) static ssize_t
__thr_sendto(int s, const void *m, size_t l, int f, const struct sockaddr *t,
    socklen_t tl)
{
 struct pthread *curthread;
 ssize_t ret;

 curthread = _get_curthread();
 _thr_cancel_enter(curthread);
 ret = __sys_sendto(s, m, l, f, t, tl);
 _thr_cancel_leave(curthread, ret <= 0);
 return (ret);
}
