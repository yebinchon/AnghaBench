
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int outgoing_packet; } ;


 int sshbuf_put (int ,void const*,size_t) ;

int
sshpkt_put(struct ssh *ssh, const void *v, size_t len)
{
 return sshbuf_put(ssh->state->outgoing_packet, v, len);
}
