
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ssh {int dummy; } ;
typedef int fd_set ;
struct TYPE_5__ {scalar_t__ istate; scalar_t__ remote_window; int rfd; scalar_t__ ostate; int wfd; int efd; scalar_t__ extended_usage; int flags; int extended; int self; int output; int input; } ;
typedef TYPE_1__ Channel ;


 scalar_t__ CHANNEL_EFD_OUTPUT_ACTIVE (TYPE_1__*) ;
 int CHAN_EOF_SENT ;
 scalar_t__ CHAN_EXTENDED_IGNORE ;
 scalar_t__ CHAN_EXTENDED_READ ;
 scalar_t__ CHAN_EXTENDED_WRITE ;
 scalar_t__ CHAN_INPUT_CLOSED ;
 scalar_t__ CHAN_INPUT_OPEN ;
 scalar_t__ CHAN_OUTPUT_CLOSED ;
 scalar_t__ CHAN_OUTPUT_OPEN ;
 scalar_t__ CHAN_OUTPUT_WAIT_DRAIN ;
 int CHAN_RBUF ;
 int FD_SET (int,int *) ;
 int chan_obuf_empty (struct ssh*,TYPE_1__*) ;
 int debug2 (char*,int ,int,scalar_t__) ;
 scalar_t__ sshbuf_check_reserve (int ,int ) ;
 scalar_t__ sshbuf_len (int ) ;

__attribute__((used)) static void
channel_pre_open(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
 if (c->istate == CHAN_INPUT_OPEN &&
     c->remote_window > 0 &&
     sshbuf_len(c->input) < c->remote_window &&
     sshbuf_check_reserve(c->input, CHAN_RBUF) == 0)
  FD_SET(c->rfd, readset);
 if (c->ostate == CHAN_OUTPUT_OPEN ||
     c->ostate == CHAN_OUTPUT_WAIT_DRAIN) {
  if (sshbuf_len(c->output) > 0) {
   FD_SET(c->wfd, writeset);
  } else if (c->ostate == CHAN_OUTPUT_WAIT_DRAIN) {
   if (CHANNEL_EFD_OUTPUT_ACTIVE(c))
    debug2("channel %d: "
        "obuf_empty delayed efd %d/(%zu)", c->self,
        c->efd, sshbuf_len(c->extended));
   else
    chan_obuf_empty(ssh, c);
  }
 }

 if (c->efd != -1 && !(c->istate == CHAN_INPUT_CLOSED &&
     c->ostate == CHAN_OUTPUT_CLOSED)) {
  if (c->extended_usage == CHAN_EXTENDED_WRITE &&
      sshbuf_len(c->extended) > 0)
   FD_SET(c->efd, writeset);
  else if (c->efd != -1 && !(c->flags & CHAN_EOF_SENT) &&
      (c->extended_usage == CHAN_EXTENDED_READ ||
      c->extended_usage == CHAN_EXTENDED_IGNORE) &&
      sshbuf_len(c->extended) < c->remote_window)
   FD_SET(c->efd, readset);
 }

}
