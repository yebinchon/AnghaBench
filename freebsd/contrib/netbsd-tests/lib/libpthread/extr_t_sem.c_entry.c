
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;
typedef int pthread_t ;


 int printf (char*,int ) ;
 int pthread_self () ;
 int sem_wait (int *) ;

__attribute__((used)) static void *
entry(void * a_arg)
{
 pthread_t self = pthread_self();
 sem_t *semp = (sem_t *) a_arg;

 printf("Thread %p waiting for semaphore...\n", self);
 sem_wait(semp);
 printf("Thread %p got semaphore\n", self);

 return ((void*)0);
}
