
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int incoming_packet; } ;


 int sshbuf_peek_string_direct (int ,int const**,size_t*) ;

int
sshpkt_peek_string_direct(struct ssh *ssh, const u_char **valp, size_t *lenp)
{
 return sshbuf_peek_string_direct(ssh->state->incoming_packet, valp, lenp);
}
