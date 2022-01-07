
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d_socket; } ;


 TYPE_1__* Daemons ;
 int NDaemons ;
 int close (int) ;

void
clrdaemon()
{
 int i;

 for (i = 0; i < NDaemons; i++)
 {
  if (Daemons[i].d_socket >= 0)
   (void) close(Daemons[i].d_socket);
  Daemons[i].d_socket = -1;
 }
}
