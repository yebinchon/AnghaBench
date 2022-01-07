
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;
typedef int SSL ;


 scalar_t__ EINTR ;
 int EX_TEMPFAIL ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 scalar_t__ FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int MAX (int,int) ;
 int PJDLOG_ASSERT (int) ;
 int SSL_get_fd (int *) ;
 scalar_t__ errno ;
 int pjdlog_exit (int ,char*) ;
 int select (int,int *,int *,int *,int *) ;
 int ssl_recv_tcp_send (int *,int) ;
 int tcp_recv_ssl_send (int,int *) ;

__attribute__((used)) static void
tls_loop(int sockfd, SSL *tcpssl)
{
 fd_set fds;
 int maxfd, tcpfd;

 tcpfd = SSL_get_fd(tcpssl);
 PJDLOG_ASSERT(tcpfd >= 0);

 for (;;) {
  FD_ZERO(&fds);
  FD_SET(sockfd, &fds);
  FD_SET(tcpfd, &fds);
  maxfd = MAX(sockfd, tcpfd);

  PJDLOG_ASSERT(maxfd + 1 <= (int)FD_SETSIZE);
  if (select(maxfd + 1, &fds, ((void*)0), ((void*)0), ((void*)0)) == -1) {
   if (errno == EINTR)
    continue;
   pjdlog_exit(EX_TEMPFAIL, "select() failed");
  }
  if (FD_ISSET(sockfd, &fds))
   tcp_recv_ssl_send(sockfd, tcpssl);
  if (FD_ISSET(tcpfd, &fds))
   ssl_recv_tcp_send(tcpssl, sockfd);
 }
}
