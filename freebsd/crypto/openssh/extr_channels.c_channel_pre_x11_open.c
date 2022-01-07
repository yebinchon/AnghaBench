
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ssh {int dummy; } ;
typedef int fd_set ;
struct TYPE_7__ {int ostate; int istate; int self; int output; int input; int type; } ;
typedef TYPE_1__ Channel ;


 int SSH_CHANNEL_OPEN ;
 int chan_ibuf_empty (struct ssh*,TYPE_1__*) ;
 int chan_read_failed (struct ssh*,TYPE_1__*) ;
 int chan_write_failed (struct ssh*,TYPE_1__*) ;
 int channel_pre_open (struct ssh*,TYPE_1__*,int *,int *) ;
 int debug2 (char*,int ,int ,int ) ;
 int logit (char*) ;
 int sshbuf_reset (int ) ;
 int x11_open_helper (struct ssh*,int ) ;

__attribute__((used)) static void
channel_pre_x11_open(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
 int ret = x11_open_helper(ssh, c->output);



 if (ret == 1) {
  c->type = SSH_CHANNEL_OPEN;
  channel_pre_open(ssh, c, readset, writeset);
 } else if (ret == -1) {
  logit("X11 connection rejected because of wrong authentication.");
  debug2("X11 rejected %d i%d/o%d",
      c->self, c->istate, c->ostate);
  chan_read_failed(ssh, c);
  sshbuf_reset(c->input);
  chan_ibuf_empty(ssh, c);
  sshbuf_reset(c->output);
  chan_write_failed(ssh, c);
  debug2("X11 closed %d i%d/o%d", c->self, c->istate, c->ostate);
 }
}
