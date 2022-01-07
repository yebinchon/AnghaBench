
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssh_channels {void* channel_max_fd; } ;
struct ssh {struct ssh_channels* chanctxt; } ;
struct TYPE_3__ {int rfd; int wfd; int sock; int efd; int extended_usage; int isatty; int wfd_isatty; int self; } ;
typedef TYPE_1__ Channel ;


 int FD_CLOEXEC ;
 int F_SETFD ;
 void* MAXIMUM (void*,int) ;
 int debug2 (char*,int ,int) ;
 int fcntl (int,int ,int ) ;
 scalar_t__ isatty (int) ;
 int set_nonblock (int) ;

__attribute__((used)) static void
channel_register_fds(struct ssh *ssh, Channel *c, int rfd, int wfd, int efd,
    int extusage, int nonblock, int is_tty)
{
 struct ssh_channels *sc = ssh->chanctxt;


 sc->channel_max_fd = MAXIMUM(sc->channel_max_fd, rfd);
 sc->channel_max_fd = MAXIMUM(sc->channel_max_fd, wfd);
 sc->channel_max_fd = MAXIMUM(sc->channel_max_fd, efd);

 if (rfd != -1)
  fcntl(rfd, F_SETFD, FD_CLOEXEC);
 if (wfd != -1 && wfd != rfd)
  fcntl(wfd, F_SETFD, FD_CLOEXEC);
 if (efd != -1 && efd != rfd && efd != wfd)
  fcntl(efd, F_SETFD, FD_CLOEXEC);

 c->rfd = rfd;
 c->wfd = wfd;
 c->sock = (rfd == wfd) ? rfd : -1;
 c->efd = efd;
 c->extended_usage = extusage;

 if ((c->isatty = is_tty) != 0)
  debug2("channel %d: rfd %d isatty", c->self, c->rfd);






 if (nonblock) {
  if (rfd != -1)
   set_nonblock(rfd);
  if (wfd != -1)
   set_nonblock(wfd);
  if (efd != -1)
   set_nonblock(efd);
 }
}
