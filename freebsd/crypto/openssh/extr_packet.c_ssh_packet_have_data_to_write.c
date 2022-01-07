
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int output; } ;


 scalar_t__ sshbuf_len (int ) ;

int
ssh_packet_have_data_to_write(struct ssh *ssh)
{
 return sshbuf_len(ssh->state->output) != 0;
}
