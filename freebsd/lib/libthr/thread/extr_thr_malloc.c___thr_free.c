
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 int __crt_free (void*) ;
 struct pthread* _get_curthread () ;
 int thr_malloc_lock (struct pthread*) ;
 int thr_malloc_unlock (struct pthread*) ;

void
__thr_free(void *cp)
{
 struct pthread *curthread;

 curthread = _get_curthread();
 thr_malloc_lock(curthread);
 __crt_free(cp);
 thr_malloc_unlock(curthread);
}
