
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;
typedef int pthread_t ;


 int THR_THREAD_UNLOCK (struct pthread*,int ) ;
 struct pthread* _get_curthread () ;
 int _thr_find_thread (struct pthread*,int ,int ) ;
 int resume_common (int ) ;

int
_pthread_resume_np(pthread_t thread)
{
 struct pthread *curthread = _get_curthread();
 int ret;


 if ((ret = _thr_find_thread(curthread, thread, 0)) == 0) {

  resume_common(thread);
  THR_THREAD_UNLOCK(curthread, thread);
 }
 return (ret);
}
