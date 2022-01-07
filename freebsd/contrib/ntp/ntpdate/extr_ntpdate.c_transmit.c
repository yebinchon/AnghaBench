
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
struct server {scalar_t__ filter_nextpt; scalar_t__ xmtcnt; scalar_t__ event_time; int srcadr; int xmt; } ;
struct pkt {int xmt; void** exten; int rec; int org; int reftime; void* refid; void* rootdisp; void* rootdelay; int precision; int ppoll; int stratum; int li_vn_mode; } ;
typedef int l_fp ;


 int HTONL_FP (int *,int *) ;
 int LEAP_NOTINSYNC ;
 size_t LEN_PKT_NOMAC ;
 int L_ADDUF (int *,int ) ;
 int L_CLR (int *) ;
 int MODE_CLIENT ;
 int NTPDATE_DISP ;
 int NTPDATE_DISTANCE ;
 int NTPDATE_PRECISION ;
 int NTPDATE_REFID ;
 int NTP_MINPOLL ;
 int PKT_LI_VN_MODE (int ,int ,int ) ;
 int STRATUM_TO_PKT (int ) ;
 int STRATUM_UNSPEC ;
 size_t authencrypt (int ,int *,size_t) ;
 int complete_servers ;
 scalar_t__ current_time ;
 int debug ;
 int get_systime (int *) ;
 void* htonl (int ) ;
 int printf (char*,char*) ;
 int sendpkt (int *,struct pkt*,size_t) ;
 int server_data (struct server*,int ,int *,int ) ;
 char* stoa (int *) ;
 int sys_authdelay ;
 scalar_t__ sys_authenticate ;
 int sys_authkey ;
 int sys_samples ;
 scalar_t__ sys_timeout ;
 int sys_version ;

__attribute__((used)) static void
transmit(
 register struct server *server
 )
{
 struct pkt xpkt;

 if (server->filter_nextpt < server->xmtcnt) {
  l_fp ts;




  L_CLR(&ts);
  server_data(server, 0, &ts, 0);
 }

 if ((int)server->filter_nextpt >= sys_samples) {




  server->event_time = 0;
  complete_servers++;
  return;
 }

 if (debug)
  printf("transmit(%s)\n", stoa(&server->srcadr));





 xpkt.li_vn_mode = PKT_LI_VN_MODE(LEAP_NOTINSYNC,
      sys_version, MODE_CLIENT);
 xpkt.stratum = STRATUM_TO_PKT(STRATUM_UNSPEC);
 xpkt.ppoll = NTP_MINPOLL;
 xpkt.precision = NTPDATE_PRECISION;
 xpkt.rootdelay = htonl(NTPDATE_DISTANCE);
 xpkt.rootdisp = htonl(NTPDATE_DISP);
 xpkt.refid = htonl(NTPDATE_REFID);
 L_CLR(&xpkt.reftime);
 L_CLR(&xpkt.org);
 L_CLR(&xpkt.rec);






 if (sys_authenticate) {
  size_t len;

  xpkt.exten[0] = htonl(sys_authkey);
  get_systime(&server->xmt);
  L_ADDUF(&server->xmt, sys_authdelay);
  HTONL_FP(&server->xmt, &xpkt.xmt);
  len = authencrypt(sys_authkey, (u_int32 *)&xpkt, LEN_PKT_NOMAC);
  sendpkt(&server->srcadr, &xpkt, (int)(LEN_PKT_NOMAC + len));

  if (debug > 1)
   printf("transmit auth to %s\n",
      stoa(&server->srcadr));
 } else {
  get_systime(&(server->xmt));
  HTONL_FP(&server->xmt, &xpkt.xmt);
  sendpkt(&server->srcadr, &xpkt, LEN_PKT_NOMAC);

  if (debug > 1)
   printf("transmit to %s\n", stoa(&server->srcadr));
 }




 server->event_time = current_time + sys_timeout;
 server->xmtcnt++;
}
