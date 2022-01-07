
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d_socket; char* d_name; int d_listenqueue; } ;


 int DEF_LISTENQUEUE ;
 TYPE_1__* Daemons ;
 size_t NDaemons ;

void
initdaemon()
{
 if (NDaemons == 0)
 {
  Daemons[NDaemons].d_socket = -1;
  Daemons[NDaemons].d_listenqueue = DEF_LISTENQUEUE;
  Daemons[NDaemons].d_name = "Daemon0";
  NDaemons = 1;
 }
}
