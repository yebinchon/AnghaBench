
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int64_t ;
struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int incoming_packet; } ;


 int sshbuf_get_u64 (int ,int *) ;

int
sshpkt_get_u64(struct ssh *ssh, u_int64_t *valp)
{
 return sshbuf_get_u64(ssh->state->incoming_packet, valp);
}
