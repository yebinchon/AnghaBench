
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char (* wait ) (char*) ;} ;


 int server_waiting ;
 unsigned char stub1 (char*) ;
 TYPE_1__* the_target ;

unsigned char
mywait (char *statusp, int connected_wait)
{
  unsigned char ret;

  if (connected_wait)
    server_waiting = 1;

  ret = (*the_target->wait) (statusp);

  if (connected_wait)
    server_waiting = 0;

  return ret;
}
