
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_3__ {int sock; int rfd; int wfd; int efd; } ;
typedef TYPE_1__ Channel ;


 int channel_close_fd (struct ssh*,int*) ;

__attribute__((used)) static void
channel_close_fds(struct ssh *ssh, Channel *c)
{
 int sock = c->sock, rfd = c->rfd, wfd = c->wfd, efd = c->efd;

 channel_close_fd(ssh, &c->sock);
 if (rfd != sock)
  channel_close_fd(ssh, &c->rfd);
 if (wfd != sock && wfd != rfd)
  channel_close_fd(ssh, &c->wfd);
 if (efd != sock && efd != rfd && efd != wfd)
  channel_close_fd(ssh, &c->efd);
}
