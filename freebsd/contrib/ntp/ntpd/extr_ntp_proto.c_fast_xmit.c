
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int32 ;
struct pkt {int * exten; int xmt; int rec; int org; int reftime; int refid; void* rootdisp; void* rootdelay; int precision; void* ppoll; int stratum; void* li_vn_mode; } ;
struct recvbuf {size_t recv_length; int recv_srcadr; TYPE_1__* dstadr; int recv_time; struct pkt recv_pkt; } ;
struct exten {int dummy; } ;
typedef int l_fp ;
typedef scalar_t__ keyid_t ;
struct TYPE_5__ {scalar_t__ in_progress; int offset; } ;
struct TYPE_4__ {int flags; int sin; } ;


 int CRYPTO_RESP ;
 int DPRINTF (int,char*) ;
 int DTOFP (int ) ;
 int DTOUFP (int ) ;
 int HTONL_FP (int *,int *) ;
 void* HTONS_FP (int ) ;
 int INT_MCASTOPEN ;
 int LEAP_NOTINSYNC ;
 size_t LEN_PKT_NOMAC ;
 int L_SUB (int *,int *) ;
 size_t MAX_MAC_LEN ;
 scalar_t__ NTP_MAXKEY ;
 void* PKT_LI_VN_MODE (int ,int ,int) ;
 int PKT_VERSION (void*) ;
 int RES_KOD ;
 int RES_MSSNTP ;
 int STRATUM_PKT_UNSPEC ;
 int STRATUM_TO_PKT (int ) ;
 scalar_t__ authencrypt (scalar_t__,int *,size_t) ;
 int authtrust (scalar_t__,int ) ;
 int convertLFPToRefID (int ) ;
 scalar_t__ crypto_xmit (int *,struct pkt*,struct recvbuf*,size_t,struct exten*,scalar_t__) ;
 int current_time ;
 TYPE_1__* findinterface (int *) ;
 int get_systime (int *) ;
 int htonl (int ) ;
 TYPE_2__ leap_smear ;
 int leap_smear_add_offs (int *,int *) ;
 int lfptoa (int *,int) ;
 void* max (void*,int ) ;
 int memcpy (int *,char*,int) ;
 int ntoa (int *) ;
 int ntohl (int ) ;
 int ntp_minpoll ;
 int send_via_ntp_signd (struct recvbuf*,int,scalar_t__,int,struct pkt*) ;
 int sendpkt (int *,TYPE_1__*,int ,struct pkt*,size_t) ;
 scalar_t__ session_key (int *,int *,scalar_t__,scalar_t__,int) ;
 int stoa (int *) ;
 int sys_authdelay ;
 int sys_kodsent ;
 int sys_precision ;
 scalar_t__ sys_private ;
 int sys_refid ;
 int sys_reftime ;
 int sys_rootdelay ;
 int sys_rootdisp ;
 int sys_stratum ;
 int xmt_leap ;

__attribute__((used)) static void
fast_xmit(
 struct recvbuf *rbufp,
 int xmode,
 keyid_t xkeyid,
 int flags
 )
{
 struct pkt xpkt;
 struct pkt *rpkt;
 l_fp xmt_tx, xmt_ty;
 size_t sendlen;
 rpkt = &rbufp->recv_pkt;
 if (rbufp->dstadr->flags & INT_MCASTOPEN)
  rbufp->dstadr = findinterface(&rbufp->recv_srcadr);
 if (flags & RES_KOD) {
  sys_kodsent++;
  xpkt.li_vn_mode = PKT_LI_VN_MODE(LEAP_NOTINSYNC,
      PKT_VERSION(rpkt->li_vn_mode), xmode);
  xpkt.stratum = STRATUM_PKT_UNSPEC;
  xpkt.ppoll = max(rpkt->ppoll, ntp_minpoll);
  xpkt.precision = rpkt->precision;
  memcpy(&xpkt.refid, "RATE", 4);
  xpkt.rootdelay = rpkt->rootdelay;
  xpkt.rootdisp = rpkt->rootdisp;
  xpkt.reftime = rpkt->reftime;
  xpkt.org = rpkt->xmt;
  xpkt.rec = rpkt->xmt;
  xpkt.xmt = rpkt->xmt;




 } else {
  xpkt.li_vn_mode = PKT_LI_VN_MODE(xmt_leap,
      PKT_VERSION(rpkt->li_vn_mode), xmode);

  xpkt.stratum = STRATUM_TO_PKT(sys_stratum);
  xpkt.ppoll = max(rpkt->ppoll, ntp_minpoll);
  xpkt.precision = sys_precision;
  xpkt.refid = sys_refid;
  xpkt.rootdelay = HTONS_FP(DTOFP(sys_rootdelay));
  xpkt.rootdisp = HTONS_FP(DTOUFP(sys_rootdisp));
  HTONL_FP(&sys_reftime, &xpkt.reftime);


  xpkt.org = rpkt->xmt;







  HTONL_FP(&rbufp->recv_time, &xpkt.rec);


  get_systime(&xmt_tx);




  HTONL_FP(&xmt_tx, &xpkt.xmt);
 }
 sendlen = LEN_PKT_NOMAC;
 if (rbufp->recv_length == sendlen) {
  sendpkt(&rbufp->recv_srcadr, rbufp->dstadr, 0, &xpkt,
      sendlen);
  DPRINTF(1, ("fast_xmit: at %ld %s->%s mode %d len %lu\n",
       current_time, stoa(&rbufp->dstadr->sin),
       stoa(&rbufp->recv_srcadr), xmode,
       (u_long)sendlen));
  return;
 }
 get_systime(&xmt_tx);
 sendlen += authencrypt(xkeyid, (u_int32 *)&xpkt, sendlen);




 sendpkt(&rbufp->recv_srcadr, rbufp->dstadr, 0, &xpkt, sendlen);
 get_systime(&xmt_ty);
 L_SUB(&xmt_ty, &xmt_tx);
 sys_authdelay = xmt_ty;
 DPRINTF(1, ("fast_xmit: at %ld %s->%s mode %d keyid %08x len %lu\n",
      current_time, ntoa(&rbufp->dstadr->sin),
      ntoa(&rbufp->recv_srcadr), xmode, xkeyid,
      (u_long)sendlen));
}
