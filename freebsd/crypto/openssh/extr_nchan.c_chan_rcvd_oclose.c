
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_7__ {int flags; scalar_t__ type; int ostate; int istate; int self; } ;
typedef TYPE_1__ Channel ;


 int CHAN_CLOSE_RCVD ;
 int CHAN_INPUT_CLOSED ;


 int CHAN_LOCAL ;
 int CHAN_OUTPUT_CLOSED ;

 int CHAN_OUTPUT_WAIT_DRAIN ;
 scalar_t__ SSH_CHANNEL_LARVAL ;
 int chan_send_eof2 (struct ssh*,TYPE_1__*) ;
 int chan_set_istate (TYPE_1__*,int ) ;
 int chan_set_ostate (TYPE_1__*,int ) ;
 int chan_shutdown_read (struct ssh*,TYPE_1__*) ;
 int debug2 (char*,int ) ;
 int error (char*,int ) ;

void
chan_rcvd_oclose(struct ssh *ssh, Channel *c)
{
 debug2("channel %d: rcvd close", c->self);
 if (!(c->flags & CHAN_LOCAL)) {
  if (c->flags & CHAN_CLOSE_RCVD)
   error("channel %d: protocol error: close rcvd twice",
       c->self);
  c->flags |= CHAN_CLOSE_RCVD;
 }
 if (c->type == SSH_CHANNEL_LARVAL) {

  chan_set_ostate(c, CHAN_OUTPUT_CLOSED);
  chan_set_istate(c, CHAN_INPUT_CLOSED);
  return;
 }
 switch (c->ostate) {
 case 128:




  chan_set_ostate(c, CHAN_OUTPUT_WAIT_DRAIN);
  break;
 }
 switch (c->istate) {
 case 130:
  chan_shutdown_read(ssh, c);
  chan_set_istate(c, CHAN_INPUT_CLOSED);
  break;
 case 129:
  if (!(c->flags & CHAN_LOCAL))
   chan_send_eof2(ssh, c);
  chan_set_istate(c, CHAN_INPUT_CLOSED);
  break;
 }
}
