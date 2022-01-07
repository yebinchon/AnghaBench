
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int incoming_packet; } ;


 int sshbuf_get_string (int ,int **,size_t*) ;

int
sshpkt_get_string(struct ssh *ssh, u_char **valp, size_t *lenp)
{
 return sshbuf_get_string(ssh->state->incoming_packet, valp, lenp);
}
