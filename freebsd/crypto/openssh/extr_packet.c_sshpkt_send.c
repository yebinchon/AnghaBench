
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {scalar_t__ mux; } ;


 int ssh_packet_send2 (struct ssh*) ;
 int ssh_packet_send_mux (struct ssh*) ;

int
sshpkt_send(struct ssh *ssh)
{
 if (ssh->state && ssh->state->mux)
  return ssh_packet_send_mux(ssh);
 return ssh_packet_send2(ssh);
}
