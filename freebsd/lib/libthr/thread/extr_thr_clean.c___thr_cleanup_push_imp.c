
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_cleanup {void (* routine ) (void*) ;struct pthread_cleanup* prev; scalar_t__ onheap; void* routine_arg; } ;
struct pthread {struct pthread_cleanup* cleanup; } ;
struct _pthread_cleanup_info {int dummy; } ;


 struct pthread* _get_curthread () ;

void
__thr_cleanup_push_imp(void (*routine)(void *), void *arg,
    struct _pthread_cleanup_info *info)
{
 struct pthread *curthread = _get_curthread();
 struct pthread_cleanup *newbuf;

 newbuf = (void *)info;
 newbuf->routine = routine;
 newbuf->routine_arg = arg;
 newbuf->onheap = 0;
 newbuf->prev = curthread->cleanup;
 curthread->cleanup = newbuf;
}
