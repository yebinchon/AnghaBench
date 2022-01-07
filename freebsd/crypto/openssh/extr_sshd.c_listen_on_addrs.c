
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct listenaddr {char* rdomain; struct addrinfo* addrs; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; struct addrinfo* ai_next; } ;
typedef int strport ;
typedef int socksize ;
typedef int socklen_t ;
typedef int ntop ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 size_t MAX_LISTEN_SOCKS ;
 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SSH_LISTEN_BACKLOG ;
 scalar_t__ bind (int,int ,int ) ;
 int close (int) ;
 int debug (char*,...) ;
 int errno ;
 int error (char*,char*,...) ;
 int fatal (char*,...) ;
 int fcntl (int,int ,int ) ;
 int getnameinfo (int ,int ,char*,int,char*,int,int) ;
 int getsockopt (int,int ,int ,int*,int*) ;
 scalar_t__ listen (int,int ) ;
 int* listen_socks ;
 int logit (char*,char*,char*,char*,char*) ;
 size_t num_listen_socks ;
 int set_nonblock (int) ;
 int set_rdomain (int,char*) ;
 int set_reuseaddr (int) ;
 int sock_set_v6only (int) ;
 int socket (scalar_t__,int ,int ) ;
 int ssh_gai_strerror (int) ;
 int strerror (int ) ;
 int verbose (char*,int ) ;

__attribute__((used)) static void
listen_on_addrs(struct listenaddr *la)
{
 int ret, listen_sock;
 struct addrinfo *ai;
 char ntop[NI_MAXHOST], strport[NI_MAXSERV];
 int socksize;
 socklen_t len;

 for (ai = la->addrs; ai; ai = ai->ai_next) {
  if (ai->ai_family != AF_INET && ai->ai_family != AF_INET6)
   continue;
  if (num_listen_socks >= MAX_LISTEN_SOCKS)
   fatal("Too many listen sockets. "
       "Enlarge MAX_LISTEN_SOCKS");
  if ((ret = getnameinfo(ai->ai_addr, ai->ai_addrlen,
      ntop, sizeof(ntop), strport, sizeof(strport),
      NI_NUMERICHOST|NI_NUMERICSERV)) != 0) {
   error("getnameinfo failed: %.100s",
       ssh_gai_strerror(ret));
   continue;
  }

  listen_sock = socket(ai->ai_family, ai->ai_socktype,
      ai->ai_protocol);
  if (listen_sock < 0) {

   verbose("socket: %.100s", strerror(errno));
   continue;
  }
  if (set_nonblock(listen_sock) == -1) {
   close(listen_sock);
   continue;
  }
  if (fcntl(listen_sock, F_SETFD, FD_CLOEXEC) == -1) {
   verbose("socket: CLOEXEC: %s", strerror(errno));
   close(listen_sock);
   continue;
  }

  set_reuseaddr(listen_sock);
  if (la->rdomain != ((void*)0) &&
      set_rdomain(listen_sock, la->rdomain) == -1) {
   close(listen_sock);
   continue;
  }


  if (ai->ai_family == AF_INET6)
   sock_set_v6only(listen_sock);

  debug("Bind to port %s on %s.", strport, ntop);

  len = sizeof(socksize);
  getsockopt(listen_sock, SOL_SOCKET, SO_RCVBUF, &socksize, &len);
  debug("Server TCP RWIN socket size: %d", socksize);


  if (bind(listen_sock, ai->ai_addr, ai->ai_addrlen) < 0) {
   error("Bind to port %s on %s failed: %.200s.",
       strport, ntop, strerror(errno));
   close(listen_sock);
   continue;
  }
  listen_socks[num_listen_socks] = listen_sock;
  num_listen_socks++;


  if (listen(listen_sock, SSH_LISTEN_BACKLOG) < 0)
   fatal("listen on [%s]:%s: %.100s",
       ntop, strport, strerror(errno));
  logit("Server listening on %s port %s%s%s.",
      ntop, strport,
      la->rdomain == ((void*)0) ? "" : " rdomain ",
      la->rdomain == ((void*)0) ? "" : la->rdomain);
 }
}
