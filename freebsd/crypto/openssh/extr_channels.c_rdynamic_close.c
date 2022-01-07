
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_6__ {int output; int input; int type; } ;
typedef TYPE_1__ Channel ;


 int SSH_CHANNEL_OPEN ;
 int chan_ibuf_empty (struct ssh*,TYPE_1__*) ;
 int chan_read_failed (struct ssh*,TYPE_1__*) ;
 int chan_write_failed (struct ssh*,TYPE_1__*) ;
 int sshbuf_reset (int ) ;

__attribute__((used)) static void
rdynamic_close(struct ssh *ssh, Channel *c)
{
 c->type = SSH_CHANNEL_OPEN;
 chan_read_failed(ssh, c);
 sshbuf_reset(c->input);
 chan_ibuf_empty(ssh, c);
 sshbuf_reset(c->output);
 chan_write_failed(ssh, c);
}
