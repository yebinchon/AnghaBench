
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;


 int AF_UNIX ;
 char* NAME ;
 int SOCK_DGRAM ;
 scalar_t__ bind (int,struct sockaddr_un*,int) ;
 int close (int) ;
 int exit (int) ;
 int perror (char*) ;
 int printf (char*,char*) ;
 scalar_t__ read (int,char*,int) ;
 int socket (int ,int ,int ) ;
 int strcpy (int ,char*) ;
 int unlink (char*) ;

main()
{
 int sock, length;
 struct sockaddr_un name;
 char buf[1024];


 sock = socket(AF_UNIX, SOCK_DGRAM, 0);
 if (sock < 0) {
  perror("opening datagram socket");
  exit(1);
 }

 name.sun_family = AF_UNIX;
 strcpy(name.sun_path, NAME);
 if (bind(sock, &name, sizeof(struct sockaddr_un))) {
  perror("binding name to datagram socket");
  exit(1);
 }
 printf("socket -->%s\en", NAME);

 if (read(sock, buf, 1024) < 0)
  perror("receiving datagram packet");
 printf("-->%s\en", buf);
 close(sock);
 unlink(NAME);
}
