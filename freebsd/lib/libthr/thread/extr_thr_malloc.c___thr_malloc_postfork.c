
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 int TID (struct pthread*) ;
 int _thr_umutex_unlock (int *,int ) ;
 int thr_malloc_umtx ;

void
__thr_malloc_postfork(struct pthread *curthread)
{

 _thr_umutex_unlock(&thr_malloc_umtx, TID(curthread));
}
