
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {char* sun_path; int sun_family; } ;
typedef int buf ;


 int AF_UNIX ;
 int NAME ;
 int SOCK_STREAM ;
 int accept (int,int ,int ) ;
 scalar_t__ bind (int,struct sockaddr_un*,int) ;
 int bzero (char*,int) ;
 int close (int) ;
 int exit (int) ;
 int listen (int,int) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int read (int,char*,int) ;
 int socket (int ,int ,int ) ;
 int strcpy (char*,int ) ;
 int unlink (int ) ;

main()
{
 int sock, msgsock, rval;
 struct sockaddr_un server;
 char buf[1024];


 sock = socket(AF_UNIX, SOCK_STREAM, 0);
 if (sock < 0) {
  perror("opening stream socket");
  exit(1);
 }

 server.sun_family = AF_UNIX;
 strcpy(server.sun_path, NAME);
 if (bind(sock, &server, sizeof(struct sockaddr_un))) {
  perror("binding stream socket");
  exit(1);
 }
 printf("Socket has name %s\en", server.sun_path);

 listen(sock, 5);
 for (;;) {
  msgsock = accept(sock, 0, 0);
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
 }
 close(sock);
 unlink(NAME);
}
