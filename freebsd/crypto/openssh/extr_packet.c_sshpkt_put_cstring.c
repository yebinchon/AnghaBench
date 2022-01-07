
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int outgoing_packet; } ;


 int sshbuf_put_cstring (int ,void const*) ;

int
sshpkt_put_cstring(struct ssh *ssh, const void *v)
{
 return sshbuf_put_cstring(ssh->state->outgoing_packet, v);
}
