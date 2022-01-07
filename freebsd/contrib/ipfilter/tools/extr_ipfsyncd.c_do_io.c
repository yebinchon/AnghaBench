
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nbuff ;
typedef int fd_set ;


 int BUFFERLEN ;

 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int LOG_ERR ;


 int STRERROR (int) ;
 int debug (int,char*,int,...) ;
 int do_kbuff (int,char*,int*) ;
 int do_packet (int,char*) ;
 int errno ;
 int lfd ;
 int nfd ;
 int read (int,char*,int) ;
 int recv (int,char*,int,int ) ;
 int select (int,int *,int *,int *,int *) ;
 int syslog (int ,char*) ;
 int terminate ;

void
do_io()
{
 char nbuff[BUFFERLEN];
 char buff[BUFFERLEN];
 fd_set mrd, rd;
 int maxfd;
 int inbuf;
 int n1;
 int left;

 FD_ZERO(&mrd);
 FD_SET(lfd, &mrd);
 FD_SET(nfd, &mrd);
 maxfd = nfd;
 if (lfd > maxfd)
  maxfd = lfd;
 debug(2, "nfd %d lfd %d maxfd %d\n", nfd, lfd, maxfd);

 inbuf = 0;





 while (!terminate) {
  int n;

  rd = mrd;

  n = select(maxfd + 1, &rd, ((void*)0), ((void*)0), ((void*)0));
  if (n < 0) {
   switch (errno)
   {
   case 130 :
    continue;
   default :
    syslog(LOG_ERR, "select error: %m");
    debug(1, "select error: %s\n", STRERROR(errno));
    return;
   }
  }

  if (FD_ISSET(lfd, &rd)) {
   n1 = read(lfd, buff+inbuf, BUFFERLEN-inbuf);

   debug(3, "read(K):%d\n", n1);

   if (n1 <= 0) {
    syslog(LOG_ERR, "read error (k-header): %m");
    debug(1, "read error (k-header): %s\n",
          STRERROR(errno));
    return;
   }

   left = 0;

   switch (do_kbuff(n1, buff, &left))
   {
   case 129 :
    return;
   case 128 :
    inbuf += left;
    break;
   default :
    inbuf = 0;
    break;
   }
  }

  if (FD_ISSET(nfd, &rd)) {
   n1 = recv(nfd, nbuff, sizeof(nbuff), 0);

   debug(3, "read(N):%d\n", n1);

   if (n1 <= 0) {
    syslog(LOG_ERR, "read error (n-header): %m");
    debug(1, "read error (n-header): %s\n",
          STRERROR(errno));
    return;
   }

   switch (do_packet(n1, nbuff))
   {
   case 129 :
    return;
   default :
    break;
   }
  }
 }
}
