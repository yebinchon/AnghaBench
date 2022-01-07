
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int locklevel; } ;


 int _thr_rwl_wrlock (int *) ;
 int pshared_lock ;

__attribute__((used)) static void
pshared_wlock(struct pthread *curthread)
{

 curthread->locklevel++;
 _thr_rwl_wrlock(&pshared_lock);
}
