
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 void* __crt_calloc (size_t,size_t) ;
 struct pthread* _get_curthread () ;
 int thr_malloc_lock (struct pthread*) ;
 int thr_malloc_unlock (struct pthread*) ;

void *
__thr_calloc(size_t num, size_t size)
{
 struct pthread *curthread;
 void *res;

 curthread = _get_curthread();
 thr_malloc_lock(curthread);
 res = __crt_calloc(num, size);
 thr_malloc_unlock(curthread);
 return (res);
}
