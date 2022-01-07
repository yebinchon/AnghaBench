
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int join_common (int ,void**,int *) ;

int
_thr_join(pthread_t pthread, void **thread_return)
{
 return (join_common(pthread, thread_return, ((void*)0)));
}
