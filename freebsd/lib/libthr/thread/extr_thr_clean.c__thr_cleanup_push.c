
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_cleanup {void (* routine ) (void*) ;int onheap; struct pthread_cleanup* prev; void* routine_arg; } ;
struct pthread {int unwind_disabled; struct pthread_cleanup* cleanup; } ;


 struct pthread* _get_curthread () ;
 scalar_t__ malloc (int) ;

void
_thr_cleanup_push(void (*routine)(void *), void *arg)
{
 struct pthread *curthread = _get_curthread();
 struct pthread_cleanup *newbuf;



 if ((newbuf = (struct pthread_cleanup *)
     malloc(sizeof(struct pthread_cleanup))) != ((void*)0)) {
  newbuf->routine = routine;
  newbuf->routine_arg = arg;
  newbuf->onheap = 1;
  newbuf->prev = curthread->cleanup;
  curthread->cleanup = newbuf;
 }
}
