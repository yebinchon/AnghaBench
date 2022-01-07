
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pthread_atfork (int ,int ,int ) ;
 int _pthread_mutex_init (int *,int *) ;
 int sem_child_postfork ;
 int sem_llock ;
 int sem_postfork ;
 int sem_prefork ;

__attribute__((used)) static void
sem_module_init(void)
{

 _pthread_mutex_init(&sem_llock, ((void*)0));
 _pthread_atfork(sem_prefork, sem_postfork, sem_child_postfork);
}
