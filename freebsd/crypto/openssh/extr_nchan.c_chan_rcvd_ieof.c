
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_6__ {scalar_t__ ostate; int output; int flags; int self; } ;
typedef TYPE_1__ Channel ;


 int CHANNEL_EFD_OUTPUT_ACTIVE (TYPE_1__*) ;
 int CHAN_EOF_RCVD ;
 scalar_t__ CHAN_OUTPUT_OPEN ;
 scalar_t__ CHAN_OUTPUT_WAIT_DRAIN ;
 int chan_obuf_empty (struct ssh*,TYPE_1__*) ;
 int chan_set_ostate (TYPE_1__*,scalar_t__) ;
 int debug2 (char*,int ) ;
 scalar_t__ sshbuf_len (int ) ;

void
chan_rcvd_ieof(struct ssh *ssh, Channel *c)
{
 debug2("channel %d: rcvd eof", c->self);
 c->flags |= CHAN_EOF_RCVD;
 if (c->ostate == CHAN_OUTPUT_OPEN)
  chan_set_ostate(c, CHAN_OUTPUT_WAIT_DRAIN);
 if (c->ostate == CHAN_OUTPUT_WAIT_DRAIN &&
     sshbuf_len(c->output) == 0 &&
     !CHANNEL_EFD_OUTPUT_ACTIVE(c))
  chan_obuf_empty(ssh, c);
}
