
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int fd_set ;
typedef int addr ;
struct TYPE_5__ {scalar_t__ host_port; scalar_t__ type; int * path; int listening_port; int local_maxpacket; int local_window_max; scalar_t__ notbefore; int sock; } ;
typedef TYPE_1__ Channel ;


 scalar_t__ ECONNABORTED ;
 scalar_t__ EINTR ;
 scalar_t__ EMFILE ;
 scalar_t__ ENFILE ;
 scalar_t__ EWOULDBLOCK ;
 int FD_ISSET (int ,int *) ;
 scalar_t__ PORT_STREAMLOCAL ;
 int SSH_CHANNEL_DYNAMIC ;
 int SSH_CHANNEL_OPENING ;
 scalar_t__ SSH_CHANNEL_RPORT_LISTENER ;
 scalar_t__ SSH_CHANNEL_RUNIX_LISTENER ;
 int accept (int ,struct sockaddr*,int*) ;
 TYPE_1__* channel_new (struct ssh*,char*,int,int,int,int,int ,int ,int ,char*,int) ;
 int debug (char*,int ,int *,scalar_t__) ;
 scalar_t__ errno ;
 int error (char*,int ) ;
 scalar_t__ monotime () ;
 int port_open_helper (struct ssh*,TYPE_1__*,char*) ;
 int set_nodelay (int) ;
 int strerror (scalar_t__) ;
 int * xstrdup (int *) ;

__attribute__((used)) static void
channel_post_port_listener(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
 Channel *nc;
 struct sockaddr_storage addr;
 int newsock, nextstate;
 socklen_t addrlen;
 char *rtype;

 if (!FD_ISSET(c->sock, readset))
  return;

 debug("Connection to port %d forwarding to %.100s port %d requested.",
     c->listening_port, c->path, c->host_port);

 if (c->type == SSH_CHANNEL_RPORT_LISTENER) {
  nextstate = SSH_CHANNEL_OPENING;
  rtype = "forwarded-tcpip";
 } else if (c->type == SSH_CHANNEL_RUNIX_LISTENER) {
  nextstate = SSH_CHANNEL_OPENING;
  rtype = "forwarded-streamlocal@openssh.com";
 } else if (c->host_port == PORT_STREAMLOCAL) {
  nextstate = SSH_CHANNEL_OPENING;
  rtype = "direct-streamlocal@openssh.com";
 } else if (c->host_port == 0) {
  nextstate = SSH_CHANNEL_DYNAMIC;
  rtype = "dynamic-tcpip";
 } else {
  nextstate = SSH_CHANNEL_OPENING;
  rtype = "direct-tcpip";
 }

 addrlen = sizeof(addr);
 newsock = accept(c->sock, (struct sockaddr *)&addr, &addrlen);
 if (newsock < 0) {
  if (errno != EINTR && errno != EWOULDBLOCK &&
      errno != ECONNABORTED)
   error("accept: %.100s", strerror(errno));
  if (errno == EMFILE || errno == ENFILE)
   c->notbefore = monotime() + 1;
  return;
 }
 if (c->host_port != PORT_STREAMLOCAL)
  set_nodelay(newsock);
 nc = channel_new(ssh, rtype, nextstate, newsock, newsock, -1,
     c->local_window_max, c->local_maxpacket, 0, rtype, 1);
 nc->listening_port = c->listening_port;
 nc->host_port = c->host_port;
 if (c->path != ((void*)0))
  nc->path = xstrdup(c->path);

 if (nextstate != SSH_CHANNEL_DYNAMIC)
  port_open_helper(ssh, nc, rtype);
}
