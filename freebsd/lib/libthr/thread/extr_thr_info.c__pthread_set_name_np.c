
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {scalar_t__ state; int tid; } ;
typedef struct pthread* pthread_t ;


 scalar_t__ PS_DEAD ;
 int THR_THREAD_LOCK (struct pthread*,struct pthread*) ;
 int THR_THREAD_UNLOCK (struct pthread*,struct pthread*) ;
 struct pthread* _get_curthread () ;
 scalar_t__ _thr_find_thread (struct pthread*,struct pthread*,int ) ;
 int thr_set_name (int ,char const*) ;
 int thr_set_name_np (struct pthread*,char const*) ;

void
_pthread_set_name_np(pthread_t thread, const char *name)
{
 struct pthread *curthread;

 curthread = _get_curthread();
 if (curthread == thread) {
  THR_THREAD_LOCK(curthread, thread);
  thr_set_name(thread->tid, name);
  thr_set_name_np(thread, name);
  THR_THREAD_UNLOCK(curthread, thread);
 } else {
  if (_thr_find_thread(curthread, thread, 0) == 0) {
   if (thread->state != PS_DEAD) {
    thr_set_name(thread->tid, name);
    thr_set_name_np(thread, name);
   }
   THR_THREAD_UNLOCK(curthread, thread);
  }
 }
}
