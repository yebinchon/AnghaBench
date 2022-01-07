
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int outgoing_packet; } ;


 int sshbuf_put_u32 (int ,int ) ;

int
sshpkt_put_u32(struct ssh *ssh, u_int32_t val)
{
 return sshbuf_put_u32(ssh->state->outgoing_packet, val);
}
