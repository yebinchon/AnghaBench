
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshbuf {int dummy; } ;
struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int outgoing_packet; } ;


 int sshbuf_put_stringb (int ,struct sshbuf const*) ;

int
sshpkt_put_stringb(struct ssh *ssh, const struct sshbuf *v)
{
 return sshbuf_put_stringb(ssh->state->outgoing_packet, v);
}
