
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pthread {scalar_t__ state; int flags; scalar_t__ tid; int cycle; } ;


 scalar_t__ PS_DEAD ;
 int SIGCANCEL ;
 int THR_FLAGS_NEED_SUSPEND ;
 int THR_FLAGS_SUSPENDED ;
 int THR_THREAD_LOCK (struct pthread*,struct pthread*) ;
 int THR_THREAD_UNLOCK (struct pthread*,struct pthread*) ;
 scalar_t__ TID_TERMINATED ;
 int _thr_send_sig (struct pthread*,int ) ;
 int _thr_umtx_wait_uint (int *,int ,int *,int ) ;

__attribute__((used)) static int
suspend_common(struct pthread *curthread, struct pthread *thread,
 int waitok)
{
 uint32_t tmp;

 while (thread->state != PS_DEAD &&
       !(thread->flags & THR_FLAGS_SUSPENDED)) {
  thread->flags |= THR_FLAGS_NEED_SUSPEND;

  if (thread->tid == TID_TERMINATED)
   return (1);
  tmp = thread->cycle;
  _thr_send_sig(thread, SIGCANCEL);
  THR_THREAD_UNLOCK(curthread, thread);
  if (waitok) {
   _thr_umtx_wait_uint(&thread->cycle, tmp, ((void*)0), 0);
   THR_THREAD_LOCK(curthread, thread);
  } else {
   THR_THREAD_LOCK(curthread, thread);
   return (0);
  }
 }

 return (1);
}
