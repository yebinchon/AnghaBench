
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ recv_termination_ack (int ) ;
 scalar_t__ send_termination_ack (int ) ;

__attribute__((used)) static int pp_client_termination(void)
{
 if (send_termination_ack(0))
  return 1;
 if (recv_termination_ack(0))
  return 1;

 return 0;
}
