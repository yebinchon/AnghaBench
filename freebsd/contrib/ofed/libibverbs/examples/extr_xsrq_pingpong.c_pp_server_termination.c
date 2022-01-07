
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_clients; } ;


 TYPE_1__ ctx ;
 scalar_t__ recv_termination_ack (int) ;
 scalar_t__ send_termination_ack (int) ;

__attribute__((used)) static int pp_server_termination(void)
{
 int i;

 for (i = 0; i < ctx.num_clients; i++) {
  if (recv_termination_ack(i))
   return 1;
 }

 for (i = 0; i < ctx.num_clients; i++) {
  if (send_termination_ack(i))
   return 1;
 }

 return 0;
}
