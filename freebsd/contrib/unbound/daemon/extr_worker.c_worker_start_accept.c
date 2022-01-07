
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct worker {scalar_t__ thread_num; TYPE_1__* daemon; int front; } ;
struct TYPE_2__ {int rc; } ;


 int daemon_remote_start_accept (int ) ;
 int listen_start_accept (int ) ;

void worker_start_accept(void* arg)
{
 struct worker* worker = (struct worker*)arg;
 listen_start_accept(worker->front);
 if(worker->thread_num == 0)
  daemon_remote_start_accept(worker->daemon->rc);
}
