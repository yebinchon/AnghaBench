
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct pkt {int dummy; } ;
typedef int sockaddr_u ;
typedef scalar_t__ SOCKET ;
typedef scalar_t__ DWORD ;


 scalar_t__ AF (int *) ;
 scalar_t__ ENOBUFS ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ INVALID_SOCKET ;
 int LOG_ERR ;
 int MAX_AF ;
 int SOCKET_ERROR ;
 int SOCKLEN (int *) ;
 scalar_t__ WSAENOBUFS ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__* fd ;
 scalar_t__* fd_family ;
 int msyslog (int ,char*,...) ;
 int sendto (scalar_t__,char*,int,int ,struct sockaddr*,int ) ;
 int stohost (int *) ;

__attribute__((used)) static void
sendpkt(
 sockaddr_u *dest,
 struct pkt *pkt,
 int len
 )
{
 int i;
 int cc;
 SOCKET sock = INVALID_SOCKET;






 for(i = 0; (i < MAX_AF); i++) {
  if(AF(dest) == fd_family[i]) {
   sock = fd[i];
  break;
  }
 }

 if (INVALID_SOCKET == sock) {
  msyslog(LOG_ERR, "cannot find family compatible socket to send ntp packet");
  exit(1);

 }

 cc = sendto(sock, (char *)pkt, len, 0, (struct sockaddr *)dest,
   SOCKLEN(dest));

 if (SOCKET_ERROR == cc) {

  if (errno != EWOULDBLOCK && errno != ENOBUFS)




   msyslog(LOG_ERR, "sendto(%s): %m", stohost(dest));
 }
}
