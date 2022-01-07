
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int locklevel; } ;


 int _thr_rwl_rdlock (int *) ;
 int pshared_lock ;

__attribute__((used)) static void
pshared_rlock(struct pthread *curthread)
{

 curthread->locklevel++;
 _thr_rwl_rdlock(&pshared_lock);
}
