
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int locklevel; } ;


 int _thr_ast (struct pthread*) ;
 int _thr_rwl_unlock (int *) ;
 int pshared_lock ;

__attribute__((used)) static void
pshared_unlock(struct pthread *curthread)
{

 _thr_rwl_unlock(&pshared_lock);
 curthread->locklevel--;
 _thr_ast(curthread);
}
