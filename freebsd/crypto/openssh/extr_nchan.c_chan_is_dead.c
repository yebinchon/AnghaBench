
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ istate; scalar_t__ ostate; scalar_t__ extended_usage; int efd; int flags; int self; int extended; } ;
typedef TYPE_1__ Channel ;


 int CHAN_CLOSE_RCVD ;
 int CHAN_CLOSE_SENT ;
 scalar_t__ CHAN_EXTENDED_WRITE ;
 scalar_t__ CHAN_INPUT_CLOSED ;
 int CHAN_LOCAL ;
 scalar_t__ CHAN_OUTPUT_CLOSED ;
 int SSH_BUG_EXTEOF ;
 scalar_t__ SSH_CHANNEL_ZOMBIE ;
 int chan_send_close2 (struct ssh*,TYPE_1__*) ;
 int datafellows ;
 int debug2 (char*,int ,...) ;
 scalar_t__ sshbuf_len (int ) ;

int
chan_is_dead(struct ssh *ssh, Channel *c, int do_send)
{
 if (c->type == SSH_CHANNEL_ZOMBIE) {
  debug2("channel %d: zombie", c->self);
  return 1;
 }
 if (c->istate != CHAN_INPUT_CLOSED || c->ostate != CHAN_OUTPUT_CLOSED)
  return 0;
 if ((datafellows & SSH_BUG_EXTEOF) &&
     c->extended_usage == CHAN_EXTENDED_WRITE &&
     c->efd != -1 &&
     sshbuf_len(c->extended) > 0) {
  debug2("channel %d: active efd: %d len %zu",
      c->self, c->efd, sshbuf_len(c->extended));
  return 0;
 }
 if (c->flags & CHAN_LOCAL) {
  debug2("channel %d: is dead (local)", c->self);
  return 1;
 }
 if (!(c->flags & CHAN_CLOSE_SENT)) {
  if (do_send) {
   chan_send_close2(ssh, c);
  } else {

   if (c->flags & CHAN_CLOSE_RCVD) {
    debug2("channel %d: almost dead",
        c->self);
    return 1;
   }
  }
 }
 if ((c->flags & CHAN_CLOSE_SENT) &&
     (c->flags & CHAN_CLOSE_RCVD)) {
  debug2("channel %d: is dead", c->self);
  return 1;
 }
 return 0;
}
