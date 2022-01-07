
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;
typedef struct pthread* pthread_t ;


 int EDEADLK ;
 int THR_THREAD_LOCK (struct pthread*,struct pthread*) ;
 int THR_THREAD_UNLOCK (struct pthread*,struct pthread*) ;
 struct pthread* _get_curthread () ;
 int _thr_ref_add (struct pthread*,struct pthread*,int ) ;
 int _thr_ref_delete (struct pthread*,struct pthread*) ;
 int suspend_common (struct pthread*,struct pthread*,int) ;

int
_pthread_suspend_np(pthread_t thread)
{
 struct pthread *curthread = _get_curthread();
 int ret;


 if (thread == _get_curthread())
  ret = EDEADLK;


 else if ((ret = _thr_ref_add(curthread, thread, 0))
     == 0) {

  THR_THREAD_LOCK(curthread, thread);
  suspend_common(curthread, thread, 1);

  THR_THREAD_UNLOCK(curthread, thread);


  _thr_ref_delete(curthread, thread);
 }
 return (ret);
}
