
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int server ;
typedef int fd_set ;
typedef int buf ;


 int AF_INET ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int INADDR_ANY ;
 int SOCK_STREAM ;
 scalar_t__ TRUE ;
 int accept (int,struct sockaddr*,int*) ;
 scalar_t__ bind (int,struct sockaddr_in*,int) ;
 int bzero (char*,int) ;
 int close (int) ;
 int exit (int) ;
 scalar_t__ getsockname (int,struct sockaddr_in*,int*) ;
 int listen (int,int) ;
 int ntohs (scalar_t__) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int read (int,char*,int) ;
 scalar_t__ select (int,int *,int ,int ,struct timeval*) ;
 int socket (int ,int ,int ) ;

main()
{
 int sock, length;
 struct sockaddr_in server;
 int msgsock;
 char buf[1024];
 int rval;
 fd_set ready;
 struct timeval to;


 sock = socket(AF_INET, SOCK_STREAM, 0);
 if (sock < 0) {
  perror("opening stream socket");
  exit(1);
 }

 server.sin_family = AF_INET;
 server.sin_addr.s_addr = INADDR_ANY;
 server.sin_port = 0;
 if (bind(sock, &server, sizeof(server))) {
  perror("binding stream socket");
  exit(1);
 }

 length = sizeof(server);
 if (getsockname(sock, &server, &length)) {
  perror("getting socket name");
  exit(1);
 }
 printf("Socket has port #%d\en", ntohs(server.sin_port));


 listen(sock, 5);
 do {
  FD_ZERO(&ready);
  FD_SET(sock, &ready);
  to.tv_sec = 5;
  if (select(sock + 1, &ready, 0, 0, &to) < 0) {
   perror("select");
   continue;
  }
  if (FD_ISSET(sock, &ready)) {
   msgsock = accept(sock, (struct sockaddr *)0, (int *)0);
   if (msgsock == -1)
    perror("accept");
   else do {
    bzero(buf, sizeof(buf));
    if ((rval = read(msgsock, buf, 1024)) < 0)
     perror("reading stream message");
    else if (rval == 0)
     printf("Ending connection\en");
    else
     printf("-->%s\en", buf);
   } while (rval > 0);
   close(msgsock);
  } else
   printf("Do something else\en");
 } while (TRUE);
}
