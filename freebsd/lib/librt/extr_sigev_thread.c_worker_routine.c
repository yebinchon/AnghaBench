
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigev_node {int (* sn_dispatch ) (struct sigev_node*) ;} ;


 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,struct sigev_node*) ;
 int stub1 (struct sigev_node*) ;
 int worker_cleanup ;

__attribute__((used)) static void *
worker_routine(void *arg)
{
 struct sigev_node *sn = arg;

 pthread_cleanup_push(worker_cleanup, sn);
 sn->sn_dispatch(sn);
 pthread_cleanup_pop(1);

 return (0);
}
