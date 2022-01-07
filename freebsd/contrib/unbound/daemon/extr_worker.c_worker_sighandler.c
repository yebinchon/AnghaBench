
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {int need_to_exit; int base; } ;






 int comm_base_exit (int ) ;

void
worker_sighandler(int sig, void* arg)
{


 struct worker* worker = (struct worker*)arg;
 switch(sig) {

  case 131:
   comm_base_exit(worker->base);
   break;

  case 130:
   worker->need_to_exit = 1;
   comm_base_exit(worker->base);
   break;

  case 129:
   worker->need_to_exit = 1;
   comm_base_exit(worker->base);
   break;

  case 128:
   worker->need_to_exit = 1;
   comm_base_exit(worker->base);
   break;
  default:

   break;
 }
}
