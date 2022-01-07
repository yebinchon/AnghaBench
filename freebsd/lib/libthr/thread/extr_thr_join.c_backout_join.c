
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int * joiner; } ;


 int THR_THREAD_LOCK (struct pthread*,struct pthread*) ;
 int THR_THREAD_UNLOCK (struct pthread*,struct pthread*) ;
 struct pthread* _get_curthread () ;

__attribute__((used)) static void backout_join(void *arg)
{
 struct pthread *pthread = (struct pthread *)arg;
 struct pthread *curthread = _get_curthread();

 THR_THREAD_LOCK(curthread, pthread);
 pthread->joiner = ((void*)0);
 THR_THREAD_UNLOCK(curthread, pthread);
}
