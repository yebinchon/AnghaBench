
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int incoming_packet; } ;


 int sshbuf_get (int ,void*,size_t) ;

int
sshpkt_get(struct ssh *ssh, void *valp, size_t len)
{
 return sshbuf_get(ssh->state->incoming_packet, valp, len);
}
