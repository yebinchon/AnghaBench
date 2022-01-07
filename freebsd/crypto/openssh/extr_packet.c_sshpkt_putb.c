
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshbuf {int dummy; } ;
struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int outgoing_packet; } ;


 int sshbuf_putb (int ,struct sshbuf const*) ;

int
sshpkt_putb(struct ssh *ssh, const struct sshbuf *b)
{
 return sshbuf_putb(ssh->state->outgoing_packet, b);
}
