
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int incoming_packet; } ;


 int SSH_ERR_UNEXPECTED_TRAILING_DATA ;
 scalar_t__ sshbuf_len (int ) ;

int
sshpkt_get_end(struct ssh *ssh)
{
 if (sshbuf_len(ssh->state->incoming_packet) > 0)
  return SSH_ERR_UNEXPECTED_TRAILING_DATA;
 return 0;
}
