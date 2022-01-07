
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timeval {int member_0; } ;
struct TYPE_7__ {scalar_t__ didnetreceive; scalar_t__ gotDM; } ;
struct TYPE_6__ {char* supply; } ;


 int Dump (char,char*,int) ;
 scalar_t__ EINTR ;
 scalar_t__ EINVAL ;
 scalar_t__ EIO ;
 scalar_t__ EWOULDBLOCK ;
 int FD_CLR (scalar_t__,int *) ;
 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 scalar_t__ FD_SETSIZE ;
 scalar_t__ MODE_LOCAL_CHARS (int ) ;
 int MSG_OOB ;
 int SIOCATMARK ;
 int SYNCHing ;
 int TerminalRead (char*,int) ;
 TYPE_5__ clocks ;
 int didnetreceive ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int flushout ;
 int globalmode ;
 int ibits ;
 int ioctl (scalar_t__,int ,char*) ;
 scalar_t__ isatty (scalar_t__) ;
 scalar_t__ memcmp (char*,char*,int) ;
 scalar_t__ net ;
 scalar_t__ netdata ;
 int netflush () ;
 TYPE_1__ netiring ;
 int obits ;
 int printf (char*) ;
 int read (scalar_t__,char*,int) ;
 int recv (scalar_t__,char*,int,int ) ;
 int ring_empty_consecutive (TYPE_1__*) ;
 int ring_supplied (TYPE_1__*,int) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int settimer (int ) ;
 int sleep (int) ;
 int stilloob () ;
 char termEofChar ;
 scalar_t__ termdata ;
 scalar_t__ tin ;
 scalar_t__ tout ;
 scalar_t__ ttyflush (int) ;
 TYPE_1__ ttyiring ;
 int xbits ;

int
process_rings(int netin,
       int netout,
       int netex,
       int ttyin,
       int ttyout,
       int poll)
{
    int c;





    int returnValue = 0;
    static struct timeval TimeValue = { 0 };

    if (net >= FD_SETSIZE
 || tout >= FD_SETSIZE
 || tin >= FD_SETSIZE)
 errx (1, "fd too large");

    if (netout) {
 FD_SET(net, &obits);
    }
    if (ttyout) {
 FD_SET(tout, &obits);
    }
    if (ttyin) {
 FD_SET(tin, &ibits);
    }
    if (netin) {
 FD_SET(net, &ibits);
    }

    if (netex) {
 FD_SET(net, &xbits);
    }

    if ((c = select(FD_SETSIZE, &ibits, &obits, &xbits,
   (poll == 0)? (struct timeval *)0 : &TimeValue)) < 0) {
 if (c == -1) {





     if (errno == EINTR) {
  return 0;
     }

     printf("sleep(5) from telnet, after select\r\n");
     sleep(5);
 }
 return 0;
    }




    if (FD_ISSET(net, &xbits)) {
 FD_CLR(net, &xbits);
 SYNCHing = 1;
 ttyflush(1);
    }




    if (FD_ISSET(net, &ibits)) {
 int canread;

 FD_CLR(net, &ibits);
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
   SYNCHing = stilloob();
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




    if (FD_ISSET(tin, &ibits)) {
 FD_CLR(tin, &ibits);
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

    if (FD_ISSET(net, &obits)) {
 FD_CLR(net, &obits);
 returnValue |= netflush();
    }
    if (FD_ISSET(tout, &obits)) {
 FD_CLR(tout, &obits);
 returnValue |= (ttyflush(SYNCHing|flushout) > 0);
    }

    return returnValue;
}
