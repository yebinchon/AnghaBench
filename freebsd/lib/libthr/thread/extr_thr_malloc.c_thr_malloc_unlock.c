
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int locklevel; } ;


 int TID (struct pthread*) ;
 int _thr_ast (struct pthread*) ;
 int _thr_umutex_unlock (int *,int ) ;
 int thr_malloc_umtx ;

__attribute__((used)) static void
thr_malloc_unlock(struct pthread *curthread)
{

 if (curthread == ((void*)0))
  return;
 _thr_umutex_unlock(&thr_malloc_umtx, TID(curthread));
 curthread->locklevel--;
 _thr_ast(curthread);
}
