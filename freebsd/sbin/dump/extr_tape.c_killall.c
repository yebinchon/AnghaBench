
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pid; scalar_t__ sent; } ;


 int SIGKILL ;
 int SLAVES ;
 int kill (scalar_t__,int ) ;
 TYPE_1__* slaves ;

void
killall(void)
{
 int i;

 for (i = 0; i < SLAVES; i++)
  if (slaves[i].pid > 0) {
   (void) kill(slaves[i].pid, SIGKILL);
   slaves[i].sent = 0;
  }
}
