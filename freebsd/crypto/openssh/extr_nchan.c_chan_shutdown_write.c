
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; int sock; int wfd; int self; int output; } ;
typedef TYPE_1__ Channel ;


 int SHUT_WR ;
 scalar_t__ SSH_CHANNEL_LARVAL ;
 scalar_t__ channel_close_fd (struct ssh*,int *) ;
 int debug2 (char*,int ,...) ;
 int errno ;
 int logit (char*,int ,int ,int ) ;
 scalar_t__ shutdown (int,int ) ;
 int sshbuf_reset (int ) ;
 int strerror (int ) ;

__attribute__((used)) static void
chan_shutdown_write(struct ssh *ssh, Channel *c)
{
 sshbuf_reset(c->output);
 if (c->type == SSH_CHANNEL_LARVAL)
  return;

 debug2("channel %d: close_write", c->self);
 if (c->sock != -1) {
  if (shutdown(c->sock, SHUT_WR) < 0)
   debug2("channel %d: chan_shutdown_write: "
       "shutdown() failed for fd %d: %.100s",
       c->self, c->sock, strerror(errno));
 } else {
  if (channel_close_fd(ssh, &c->wfd) < 0)
   logit("channel %d: chan_shutdown_write: "
       "close() failed for fd %d: %.100s",
       c->self, c->wfd, strerror(errno));
 }
}
