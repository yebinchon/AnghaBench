
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {int * func; } ;


 int fprintf (int ,char*,int) ;
 int in_dispatch ;
 int resort ;
 scalar_t__ rpoll_trace ;
 int stderr ;
 int* tfd ;
 size_t tfd_used ;
 TYPE_1__* tims ;
 int tims_used ;

void
poll_stop_timer(int handle)
{
 u_int i;

 if(rpoll_trace)
  fprintf(stderr, "poll_stop_timer(%d)", handle);

 tims[handle].func = ((void*)0);
 tims_used--;

 resort = 1;

 if(!in_dispatch)
  return;

 for(i = 0; i < tfd_used; i++)
  if(tfd[i] == handle) {
   tfd[i] = -1;
   break;
  }
}
