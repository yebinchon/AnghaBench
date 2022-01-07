
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int * pfd; } ;


 int fprintf (int ,char*,int) ;
 int poll_blocksig () ;
 int poll_unblocksig () ;
 int rebuild ;
 TYPE_1__* regs ;
 int regs_used ;
 scalar_t__ rpoll_trace ;
 int stderr ;

void
poll_unregister(int handle)
{
 if(rpoll_trace)
  fprintf(stderr, "poll_unregister(%d)", handle);

 poll_blocksig();

 regs[handle].fd = -1;



 rebuild = 1;
 regs_used--;

 poll_unblocksig();
}
