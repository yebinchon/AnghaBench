
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct pkt {int dummy; } ;
struct TYPE_5__ {int sa; } ;
typedef TYPE_1__ sockaddr_u ;
typedef int SOCKET ;


 int FALSE ;
 int LOG_ERR ;
 int SOCKET_ERROR ;
 int SOCKLEN (TYPE_1__*) ;
 int TRACE (int,char*) ;
 int TRUE ;
 int debug ;
 int msyslog (int ,char*,int ) ;
 int pkt_output (struct pkt*,int,int ) ;
 int printf (char*) ;
 int sendto (int ,void*,int,int ,int *,int ) ;
 int sptoa (TYPE_1__*) ;
 int stdout ;

int
sendpkt (
 SOCKET rsock,
 sockaddr_u *dest,
 struct pkt *pkt,
 int len
 )
{
 int cc;







 TRACE(1, ("sntp sendpkt: Sending packet to %s ...\n",
    sptoa(dest)));

 cc = sendto(rsock, (void *)pkt, len, 0, &dest->sa,
      SOCKLEN(dest));
 if (cc == SOCKET_ERROR) {
  msyslog(LOG_ERR, "Send to %s failed, %m",
   sptoa(dest));
  return FALSE;
 }
 TRACE(1, ("Packet sent.\n"));

 return TRUE;
}
