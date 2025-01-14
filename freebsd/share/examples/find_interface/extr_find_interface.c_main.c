
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; void* sin_port; void* sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {int * h_addr_list; } ;


 void* AF_INET ;
 scalar_t__ EADDRINUSE ;
 int EX_NOHOST ;
 int EX_OSERR ;
 int EX_USAGE ;
 int INADDR_ANY ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int bind (int,struct sockaddr*,int) ;
 int connect (int,struct sockaddr*,int) ;
 int err (int ,char*) ;
 scalar_t__ errno ;
 int errx (int ,char*,...) ;
 struct hostent* gethostbyname (char*) ;
 int getsockname (int,struct sockaddr*,int*) ;
 int htonl (int ) ;
 void* htons (int) ;
 char* inet_ntoa (TYPE_1__) ;
 int memcpy (TYPE_1__*,int ,int) ;
 int ntohs (void*) ;
 int printf (char*,char*,char*) ;
 int socket (int ,int ,int ) ;

int
main(int argc, char **argv)
{
 struct sockaddr_in local, remote;
 struct hostent *hp;
 int s, rv, namelen;

 argc--, argv++;

 if (!*argv) {
  errx(EX_USAGE, "must supply a hostname");
 }

 hp = gethostbyname(*argv);
 if (!hp) {
  errx(EX_NOHOST, "cannot resolve hostname: %s", *argv);
 }

 memcpy(&remote.sin_addr, hp->h_addr_list[0], sizeof remote.sin_addr);
 remote.sin_port = htons(60000);
 remote.sin_family = AF_INET;
 remote.sin_len = sizeof remote;

 local.sin_addr.s_addr = htonl(INADDR_ANY);
 local.sin_port = htons(60000);
 local.sin_family = AF_INET;
 local.sin_len = sizeof local;

 s = socket(PF_INET, SOCK_DGRAM, 0);
 if (s < 0)
  err(EX_OSERR, "socket");

 do {
  rv = bind(s, (struct sockaddr *)&local, sizeof local);
  local.sin_port = htons(ntohs(local.sin_port) + 1);
 } while(rv < 0 && errno == EADDRINUSE);

 if (rv < 0)
  err(EX_OSERR, "bind");

 do {
  rv = connect(s, (struct sockaddr *)&remote, sizeof remote);
  remote.sin_port = htons(ntohs(remote.sin_port) + 1);
 } while(rv < 0 && errno == EADDRINUSE);

 if (rv < 0)
  err(EX_OSERR, "connect");

 namelen = sizeof local;
 rv = getsockname(s, (struct sockaddr *)&local, &namelen);
 if (rv < 0)
  err(EX_OSERR, "getsockname");

 printf("Route to %s is out %s\n", *argv, inet_ntoa(local.sin_addr));
 return 0;
}
