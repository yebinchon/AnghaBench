
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pthread_mutex_unlock (int *) ;
 int sem_llock ;

__attribute__((used)) static void
sem_child_postfork(void)
{

 _pthread_mutex_unlock(&sem_llock);
}
