
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int outgoing_packet; } ;


 int sshbuf_put_u8 (int ,int ) ;

int
sshpkt_put_u8(struct ssh *ssh, u_char val)
{
 return sshbuf_put_u8(ssh->state->outgoing_packet, val);
}
