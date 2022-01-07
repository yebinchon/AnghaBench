
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 void* __crt_malloc (size_t) ;
 struct pthread* _get_curthread () ;
 int thr_malloc_lock (struct pthread*) ;
 int thr_malloc_unlock (struct pthread*) ;

void *
__thr_malloc(size_t nbytes)
{
 struct pthread *curthread;
 void *res;

 curthread = _get_curthread();
 thr_malloc_lock(curthread);
 res = __crt_malloc(nbytes);
 thr_malloc_unlock(curthread);
 return (res);
}
