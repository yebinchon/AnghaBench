
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 scalar_t__ NS_SUCCESS ;
 int assert (int) ;
 scalar_t__ func1 () ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,void**) ;
 int thrfunc ;

int
main(int argc, char *argv[])
{
 pthread_t thr;
 void *threval;

 assert(pthread_create(&thr, ((void*)0), thrfunc, ((void*)0)) == 0);
 assert(func1() == NS_SUCCESS);
 assert(pthread_join(thr, &threval) == 0);
}
