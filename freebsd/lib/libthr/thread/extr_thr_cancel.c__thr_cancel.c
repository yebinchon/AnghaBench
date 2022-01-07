
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct pthread {int dummy; } ;
typedef TYPE_1__* pthread_t ;
struct TYPE_6__ {int cancel_pending; scalar_t__ state; } ;


 scalar_t__ PS_DEAD ;
 int SIGCANCEL ;
 int THR_THREAD_UNLOCK (struct pthread*,TYPE_1__*) ;
 struct pthread* _get_curthread () ;
 int _thr_find_thread (struct pthread*,TYPE_1__*,int ) ;
 int _thr_send_sig (TYPE_1__*,int ) ;

int
_thr_cancel(pthread_t pthread)
{
 struct pthread *curthread = _get_curthread();
 int ret;






 if ((ret = _thr_find_thread(curthread, pthread, 0)) == 0) {
  if (!pthread->cancel_pending) {
   pthread->cancel_pending = 1;
   if (pthread->state != PS_DEAD)
    _thr_send_sig(pthread, SIGCANCEL);
  }
  THR_THREAD_UNLOCK(curthread, pthread);
 }
 return (ret);
}
