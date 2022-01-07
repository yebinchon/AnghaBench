
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ssh {int dummy; } ;
typedef int fd_set ;
struct TYPE_6__ {scalar_t__ istate; scalar_t__ ostate; int wfd; int output; int input; int rfd; int mux_pause; } ;
typedef TYPE_1__ Channel ;


 scalar_t__ CHAN_INPUT_OPEN ;
 scalar_t__ CHAN_INPUT_WAIT_DRAIN ;
 scalar_t__ CHAN_OUTPUT_OPEN ;
 scalar_t__ CHAN_OUTPUT_WAIT_DRAIN ;
 int CHAN_RBUF ;
 int FD_SET (int ,int *) ;
 int chan_ibuf_empty (struct ssh*,TYPE_1__*) ;
 int chan_obuf_empty (struct ssh*,TYPE_1__*) ;
 int chan_rcvd_oclose (struct ssh*,TYPE_1__*) ;
 scalar_t__ sshbuf_check_reserve (int ,int ) ;
 scalar_t__ sshbuf_len (int ) ;
 int sshbuf_reset (int ) ;

__attribute__((used)) static void
channel_pre_mux_client(struct ssh *ssh,
    Channel *c, fd_set *readset, fd_set *writeset)
{
 if (c->istate == CHAN_INPUT_OPEN && !c->mux_pause &&
     sshbuf_check_reserve(c->input, CHAN_RBUF) == 0)
  FD_SET(c->rfd, readset);
 if (c->istate == CHAN_INPUT_WAIT_DRAIN) {

  sshbuf_reset(c->input);
  chan_ibuf_empty(ssh, c);

  chan_rcvd_oclose(ssh, c);
 }
 if (c->ostate == CHAN_OUTPUT_OPEN ||
     c->ostate == CHAN_OUTPUT_WAIT_DRAIN) {
  if (sshbuf_len(c->output) > 0)
   FD_SET(c->wfd, writeset);
  else if (c->ostate == CHAN_OUTPUT_WAIT_DRAIN)
   chan_obuf_empty(ssh, c);
 }
}
