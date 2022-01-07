
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;
typedef int ssize_t ;
typedef int socklen_t ;
typedef int sin ;


 int AF_INET ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ EINTR ;
 scalar_t__ EISCONN ;
 scalar_t__ EWOULDBLOCK ;
 int FAIL (char*,...) ;
 int F_GETFL ;
 int F_SETFL ;
 int INADDR_LOOPBACK ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int SIGALRM ;
 int SOCK_NONBLOCK ;
 int SOCK_STREAM ;
 int SOMAXCONN ;
 int alarm (int) ;
 int bind (int,struct sockaddr const*,int) ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int ding ;
 scalar_t__ errno ;
 int fcntl (int,int ,int) ;
 int getsockname (int,struct sockaddr*,int*) ;
 int htonl (int ) ;
 int htons (int ) ;
 int listen (int,int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int paccept (int,int *,int *,int *,int) ;
 int read (int,char*,int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int socket (int ,int,int ) ;

__attribute__((used)) static void
paccept_block(bool pacceptblock, bool fcntlblock)
{
 int srvr = -1, clnt = -1, as = -1;
 int ok, fl;
 ssize_t n;
 char buf[10];
 struct sockaddr_in sin, ba;
 struct sigaction sa;

 srvr = socket(AF_INET, SOCK_STREAM | SOCK_NONBLOCK, 0);
 if (srvr == -1)
  FAIL("socket");

 memset(&sin, 0, sizeof(sin));
 sin.sin_family = AF_INET;



 sin.sin_port = htons(0);
 sin.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
 ok = bind(srvr, (const struct sockaddr *)&sin, (socklen_t)sizeof(sin));
 if (ok == -1)
  FAIL("bind");

 socklen_t addrlen = sizeof(struct sockaddr_in);
 ok = getsockname(srvr, (struct sockaddr *)&ba, &addrlen);
 if (ok == -1)
  FAIL("getsockname");

 ok = listen(srvr, SOMAXCONN);
 if (ok == -1)
  FAIL("listen");

 clnt = socket(AF_INET, SOCK_STREAM | SOCK_NONBLOCK, 0);
 if (clnt == -1)
  FAIL("socket");


 ok = connect(clnt, (struct sockaddr *) &ba, addrlen);
 if (ok != -1 || errno != EINPROGRESS)
  FAIL("expected connect to fail");
 as = paccept(srvr, ((void*)0), ((void*)0), ((void*)0), pacceptblock ? 0 : SOCK_NONBLOCK);
 ok = connect(clnt, (struct sockaddr *) &ba, addrlen);
 if (ok == -1 && errno != EISCONN)
  FAIL("connect failed");
 if (as == -1) {
  as = paccept(srvr, ((void*)0), ((void*)0), ((void*)0), pacceptblock ? 0 : SOCK_NONBLOCK);
  if (as == -1)
   FAIL("paccept");
 }
 if (fcntlblock) {
  fl = fcntl(as, F_GETFL, 0);
  if (fl == -1)
   FAIL("fnctl");
  if (fl != (O_RDWR|O_NONBLOCK))
   FAIL("fl 0x%x != 0x%x\n", fl, O_RDWR|O_NONBLOCK);
  ok = fcntl(as, F_SETFL, fl & ~O_NONBLOCK);
  if (ok == -1)
   FAIL("fnctl setfl");

  fl = fcntl(as, F_GETFL, 0);
  if (fl & O_NONBLOCK)
   FAIL("fl non blocking after reset");
 }
 sa.sa_handler = ding;
 sa.sa_flags = 0;
 sigemptyset(&sa.sa_mask);
 sigaction(SIGALRM, &sa, ((void*)0));
 alarm(1);
 n = read(as, buf, 10);

 if (pacceptblock || fcntlblock) {
  if (n == -1 && errno != EINTR)
   FAIL("read");
 } else {
  if (n != -1 || errno != EWOULDBLOCK)
   FAIL("read");
 }
 return;
fail:
 close(srvr);
 close(clnt);
 close(as);
}
