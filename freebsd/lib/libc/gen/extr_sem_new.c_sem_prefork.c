
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pthread_mutex_lock (int *) ;
 int sem_llock ;

__attribute__((used)) static void
sem_prefork(void)
{

 _pthread_mutex_lock(&sem_llock);
}
