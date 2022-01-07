
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;
typedef struct pthread* pthread_t ;


 int EINVAL ;
 int THR_THREAD_UNLOCK (struct pthread*,struct pthread*) ;
 int _SIG_MAXSIG ;
 struct pthread* _get_curthread () ;
 int _thr_find_thread (struct pthread*,struct pthread*,int ) ;
 int _thr_send_sig (struct pthread*,int) ;

int
_Tthr_kill(pthread_t pthread, int sig)
{
 struct pthread *curthread;
 int ret;


 if (sig < 0 || sig > _SIG_MAXSIG)

  return (EINVAL);

 curthread = _get_curthread();






 if (curthread == pthread) {
  if (sig > 0)
   _thr_send_sig(pthread, sig);
  ret = 0;
 } else if ((ret = _thr_find_thread(curthread, pthread,
                     0)) == 0) {
  if (sig > 0)
   _thr_send_sig(pthread, sig);
  THR_THREAD_UNLOCK(curthread, pthread);
 }


 return (ret);
}
