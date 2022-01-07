
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int output; scalar_t__ interactive_mode; } ;


 int sshbuf_len (int ) ;

int
ssh_packet_not_very_much_data_to_write(struct ssh *ssh)
{
 if (ssh->state->interactive_mode)
  return sshbuf_len(ssh->state->output) < 16384;
 else
  return sshbuf_len(ssh->state->output) < 128 * 1024;
}
