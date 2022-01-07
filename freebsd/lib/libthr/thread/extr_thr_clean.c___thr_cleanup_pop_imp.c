
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_cleanup {scalar_t__ onheap; int routine_arg; int (* routine ) (int ) ;struct pthread_cleanup* prev; } ;
struct pthread {struct pthread_cleanup* cleanup; } ;


 struct pthread* _get_curthread () ;
 int free (struct pthread_cleanup*) ;
 int stub1 (int ) ;

void
__thr_cleanup_pop_imp(int execute)
{
 struct pthread *curthread = _get_curthread();
 struct pthread_cleanup *old;

 if ((old = curthread->cleanup) != ((void*)0)) {
  curthread->cleanup = old->prev;
  if (execute)
   old->routine(old->routine_arg);
  if (old->onheap)
   free(old);
 }
}
