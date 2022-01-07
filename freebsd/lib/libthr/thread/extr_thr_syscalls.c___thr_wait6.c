
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;
struct __wrusage {int dummy; } ;
typedef int siginfo_t ;
typedef scalar_t__ pid_t ;
typedef int idtype_t ;
typedef int id_t ;


 scalar_t__ __sys_wait6 (int ,int ,int*,int,struct __wrusage*,int *) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;

__attribute__((used)) static pid_t
__thr_wait6(idtype_t idtype, id_t id, int *status, int options,
    struct __wrusage *ru, siginfo_t *infop)
{
 struct pthread *curthread;
 pid_t ret;

 curthread = _get_curthread();
 _thr_cancel_enter(curthread);
 ret = __sys_wait6(idtype, id, status, options, ru, infop);
 _thr_cancel_leave(curthread, ret <= 0);
 return (ret);
}
