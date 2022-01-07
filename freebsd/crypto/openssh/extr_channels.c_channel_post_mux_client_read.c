
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
struct ssh {int dummy; } ;
typedef int fd_set ;
struct TYPE_7__ {int rfd; scalar_t__ istate; scalar_t__ (* mux_rcb ) (struct ssh*,TYPE_1__*) ;int self; int input; scalar_t__ mux_pause; } ;
typedef TYPE_1__ Channel ;


 int CHANNEL_MUX_MAX_PACKET ;
 scalar_t__ CHAN_INPUT_OPEN ;
 scalar_t__ CHAN_INPUT_WAIT_DRAIN ;
 int FD_ISSET (int,int *) ;
 int PEEK_U32 (int ) ;
 int chan_mark_dead (struct ssh*,TYPE_1__*) ;
 int chan_rcvd_oclose (struct ssh*,TYPE_1__*) ;
 int debug (char*,int ) ;
 int debug2 (char*,int ,int,int) ;
 int read_mux (struct ssh*,TYPE_1__*,int) ;
 int sshbuf_ptr (int ) ;
 scalar_t__ stub1 (struct ssh*,TYPE_1__*) ;

__attribute__((used)) static void
channel_post_mux_client_read(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
 u_int need;

 if (c->rfd == -1 || !FD_ISSET(c->rfd, readset))
  return;
 if (c->istate != CHAN_INPUT_OPEN && c->istate != CHAN_INPUT_WAIT_DRAIN)
  return;
 if (c->mux_pause)
  return;





 if (read_mux(ssh, c, 4) < 4)
  return;

 need = PEEK_U32(sshbuf_ptr(c->input));

 if (need > (256 * 1024)) {
  debug2("channel %d: packet too big %u > %u",
      c->self, (256 * 1024), need);
  chan_rcvd_oclose(ssh, c);
  return;
 }
 if (read_mux(ssh, c, need + 4) < need + 4)
  return;
 if (c->mux_rcb(ssh, c) != 0) {
  debug("channel %d: mux_rcb failed", c->self);
  chan_mark_dead(ssh, c);
  return;
 }
}
