
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;


 int sem_post (int *) ;
 int sem_wait (int *) ;

__attribute__((used)) static void *
hthread(void *arg)
{
 sem_t *semmarit = arg;

 for (;;) {
  sem_post(&semmarit[2]);
  sem_wait(&semmarit[1]);
  sem_wait(&semmarit[0]);
 }

 return ((void*)0);
}
