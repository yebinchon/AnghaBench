
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 struct pthread* _get_curthread () ;
 int pshared_clean (void*,void*) ;
 int pshared_gc (struct pthread*) ;
 void* pshared_remove (void*) ;
 int pshared_unlock (struct pthread*) ;
 int pshared_wlock (struct pthread*) ;

void
__thr_pshared_destroy(void *key)
{
 struct pthread *curthread;
 void *val;

 curthread = _get_curthread();
 pshared_wlock(curthread);
 val = pshared_remove(key);
 pshared_unlock(curthread);
 pshared_clean(key, val);
 pshared_gc(curthread);
}
