
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timeval {int member_1; int member_0; } ;
typedef int fd_set ;
typedef int fd_mask ;
struct TYPE_7__ {scalar_t__ didnetreceive; scalar_t__ gotDM; } ;
struct TYPE_6__ {char* supply; } ;


 int Dump (char,char*,int) ;
 scalar_t__ EINTR ;
 scalar_t__ EINVAL ;
 scalar_t__ EIO ;
 scalar_t__ EWOULDBLOCK ;
 int FD_CLR (int,int *) ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 scalar_t__ MODE_LOCAL_CHARS (int ) ;
 int MSG_OOB ;
 int NFDBITS ;
 int SIOCATMARK ;
 int SYNCHing ;
 int TerminalRead (char*,int) ;
 TYPE_5__ clocks ;
 int didnetreceive ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int fdsn ;
 int flushout ;
 int free (int *) ;
 int globalmode ;
 int howmany (int,int ) ;
 int * ibitsp ;
 int ioctl (int,int ,char*) ;
 scalar_t__ isatty (int) ;
 scalar_t__ malloc (int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (int *,int ,int) ;
 int net ;
 scalar_t__ netdata ;
 int netflush () ;
 TYPE_1__ netiring ;
 int * obitsp ;
 int printf (char*,char*) ;
 int read (int,char*,int) ;
 int recv (int,char*,int,int ) ;
 int ring_empty_consecutive (TYPE_1__*) ;
 int ring_supplied (TYPE_1__*,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int settimer (int ) ;
 int sleep (int) ;
 int stilloob (int) ;
 char* strerror (scalar_t__) ;
 char termEofChar ;
 scalar_t__ termdata ;
 int tin ;
 int tout ;
 scalar_t__ ttyflush (int) ;
 TYPE_1__ ttyiring ;
 int * xbitsp ;

int
process_rings(int netin, int netout, int netex, int ttyin, int ttyout, int poll)
{
    int c;
    int returnValue = 0;
    static struct timeval TimeValue = { 0, 0 };
    int maxfd = -1;
    int tmp;

    if ((netout || netin || netex) && net > maxfd)
 maxfd = net;

    if (ttyout && tout > maxfd)
 maxfd = tout;
    if (ttyin && tin > maxfd)
 maxfd = tin;
    tmp = howmany(maxfd+1, NFDBITS) * sizeof(fd_mask);
    if (tmp > fdsn) {
 if (ibitsp)
     free(ibitsp);
 if (obitsp)
     free(obitsp);
 if (xbitsp)
     free(xbitsp);

 fdsn = tmp;
 if ((ibitsp = (fd_set *)malloc(fdsn)) == ((void*)0))
     err(1, "malloc");
 if ((obitsp = (fd_set *)malloc(fdsn)) == ((void*)0))
     err(1, "malloc");
 if ((xbitsp = (fd_set *)malloc(fdsn)) == ((void*)0))
     err(1, "malloc");
 memset(ibitsp, 0, fdsn);
 memset(obitsp, 0, fdsn);
 memset(xbitsp, 0, fdsn);
    }

    if (netout)
 FD_SET(net, obitsp);
    if (ttyout)
 FD_SET(tout, obitsp);
    if (ttyin)
 FD_SET(tin, ibitsp);
    if (netin)
 FD_SET(net, ibitsp);
    if (netex)
 FD_SET(net, xbitsp);
    if ((c = select(maxfd + 1, ibitsp, obitsp, xbitsp,
      (poll == 0)? (struct timeval *)0 : &TimeValue)) < 0) {
 if (c == -1) {





     if (errno == EINTR) {
  return 0;
     }

     printf("sleep(5) from telnet, after select: %s\r\n", strerror(errno));
     sleep(5);
 }
 return 0;
    }




    if (FD_ISSET(net, xbitsp)) {
 FD_CLR(net, xbitsp);
 SYNCHing = 1;
 (void) ttyflush(1);
    }




    if (FD_ISSET(net, ibitsp)) {
 int canread;

 FD_CLR(net, ibitsp);
 canread = ring_empty_consecutive(&netiring);
 if (SYNCHing) {
     int atmark;
     static int bogus_oob = 0, first = 1;

     ioctl(net, SIOCATMARK, (char *)&atmark);
     if (atmark) {
  c = recv(net, netiring.supply, canread, MSG_OOB);
  if ((c == -1) && (errno == EINVAL)) {
      c = recv(net, netiring.supply, canread, 0);
      if (clocks.didnetreceive < clocks.gotDM) {
   SYNCHing = stilloob(net);
      }
  } else if (first && c > 0) {
      int i;
      i = recv(net, netiring.supply + c, canread - c, MSG_OOB);
      if (i == c &&
   memcmp(netiring.supply, netiring.supply + c, i) == 0) {
   bogus_oob = 1;
   first = 0;
      } else if (i < 0) {
   bogus_oob = 0;
   first = 0;
      } else
   c += i;
  }
  if (bogus_oob && c > 0) {
      int i;





      i = read(net, netiring.supply + c, canread - c);
      if (i > 0)
   c += i;
  }
     } else {
  c = recv(net, netiring.supply, canread, 0);
     }
 } else {
     c = recv(net, netiring.supply, canread, 0);
 }
 settimer(didnetreceive);



 if (c < 0 && errno == EWOULDBLOCK) {
     c = 0;
 } else if (c <= 0) {
     return -1;
 }
 if (netdata) {
     Dump('<', netiring.supply, c);
 }
 if (c)
     ring_supplied(&netiring, c);
 returnValue = 1;
    }




    if (FD_ISSET(tin, ibitsp)) {
 FD_CLR(tin, ibitsp);
 c = TerminalRead(ttyiring.supply, ring_empty_consecutive(&ttyiring));
 if (c < 0 && errno == EIO)
     c = 0;
 if (c < 0 && errno == EWOULDBLOCK) {
     c = 0;
 } else {

     if ((c == 0) && MODE_LOCAL_CHARS(globalmode) && isatty(tin)) {

  *ttyiring.supply = termEofChar;
  c = 1;
     }
     if (c <= 0) {
  return -1;
     }
     if (termdata) {
  Dump('<', ttyiring.supply, c);
     }
     ring_supplied(&ttyiring, c);
 }
 returnValue = 1;
    }

    if (FD_ISSET(net, obitsp)) {
 FD_CLR(net, obitsp);
 returnValue |= netflush();
    }
    if (FD_ISSET(tout, obitsp)) {
 FD_CLR(tout, obitsp);
 returnValue |= (ttyflush(SYNCHing|flushout) > 0);
    }

    return returnValue;
}
