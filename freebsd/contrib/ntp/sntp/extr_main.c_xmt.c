
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* spkt; int sock; } ;
typedef TYPE_1__ xmt_ctx ;
typedef int u_long ;
typedef int u_int ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct pkt {int dummy; } ;
struct dns_ctx {int name; int key; int key_id; } ;
typedef int sockaddr_u ;
struct TYPE_5__ {scalar_t__ stime; int x_pkt; int addr; struct dns_ctx* dctx; } ;
typedef TYPE_2__ sent_pkt ;
typedef int SOCKET ;


 scalar_t__ JAN_1970 ;
 int LOG_ERR ;
 int TRACE (int,char*) ;
 int dec_pending_ntp (int ,int *) ;
 int exit (int) ;
 size_t generate_pkt (struct pkt*,struct timeval*,int ,int ) ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int memcpy (int *,struct pkt*,int ) ;
 int min (int,size_t) ;
 int msyslog (int ,char*) ;
 int sendpkt (int ,int *,struct pkt*,size_t) ;
 int stoa (int *) ;

void
xmt(
 xmt_ctx * xctx
 )
{
 SOCKET sock = xctx->sock;
 struct dns_ctx *dctx = xctx->spkt->dctx;
 sent_pkt * spkt = xctx->spkt;
 sockaddr_u * dst = &spkt->addr;
 struct timeval tv_xmt;
 struct pkt x_pkt;
 size_t pkt_len;
 int sent;

 if (0 != gettimeofday(&tv_xmt, ((void*)0))) {
  msyslog(LOG_ERR,
   "xmt: gettimeofday() failed: %m");
  exit(1);
 }
 tv_xmt.tv_sec += JAN_1970;

 pkt_len = generate_pkt(&x_pkt, &tv_xmt, dctx->key_id,
          dctx->key);

 sent = sendpkt(sock, dst, &x_pkt, pkt_len);
 if (sent) {

  memcpy(&spkt->x_pkt, &x_pkt, min(sizeof(spkt->x_pkt),
         pkt_len));
  spkt->stime = tv_xmt.tv_sec - JAN_1970;

  TRACE(2, ("xmt: %lx.%6.6u %s %s\n", (u_long)tv_xmt.tv_sec,
     (u_int)tv_xmt.tv_usec, dctx->name, stoa(dst)));
 } else {
  dec_pending_ntp(dctx->name, dst);
 }

 return;
}
