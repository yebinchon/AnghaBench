
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_int ;
typedef scalar_t__ u_char ;
struct pkt {int refid; int precision; int exten; int ppoll; int stratum; int li_vn_mode; int xmt; int rec; int org; int reftime; int rootdisp; int rootdelay; } ;
struct peer {int flash; int hpoll; void* dst; double rootdelay; double rootdisp; scalar_t__ retry; int reach; scalar_t__ burst; int minpoll; scalar_t__ flip; void* borg; void* aorg; int flags; double xleave; int delay; double offset; unsigned int ppoll; scalar_t__ t21_last; scalar_t__ t34_bytes; int t21_bytes; double t21; double r21; double t34; double r34; scalar_t__ hmode; int crypto; scalar_t__ bias; scalar_t__ pmode; int precision; void* nextdate; void* timereachable; void* reftime; int refid; void* stratum; scalar_t__ leap; TYPE_1__* dstadr; int srcadr; int processed; int seldisptoolarge; } ;
typedef int statstr ;
typedef void* l_fp ;
struct TYPE_2__ {int sin; } ;


 int CRYPTO_FLAG_ALL ;
 int DPRINTF (int,char*) ;
 int FLAG_BC_VOL ;
 int FLAG_SKEY ;
 int FLAG_XB ;
 double FPTOD (int ) ;
 scalar_t__ LEAP_NOTINSYNC ;
 int LFPTOD (void**,double) ;
 double LOGTOD (int ) ;
 int L_SUB (void**,void**) ;
 double MAXDISPERSE ;
 void* MIN_V4_PKT_LEN ;
 void* MODE_BCLIENT ;
 scalar_t__ MODE_BROADCAST ;
 scalar_t__ MODE_CLIENT ;
 int NTOHL_FP (int *,void**) ;
 int NTOHS_FP (int ) ;
 scalar_t__ NTP_IBURST ;
 int NTP_MAXSTRLEN ;
 int NTP_SHIFT ;
 int PEVNT_REACH ;
 int PEVNT_XERR ;
 scalar_t__ PKT_LEAP (int ) ;
 scalar_t__ PKT_MODE (int ) ;
 int PKT_TEST_MASK ;
 scalar_t__ PKT_TO_STRATUM (int ) ;
 scalar_t__ PKT_VERSION (int ) ;
 int STRATUM_UNSPEC ;
 int TEST11 ;
 int TEST6 ;
 int TEST7 ;
 int clock_filter (struct peer*,scalar_t__,double,double) ;
 double clock_phi ;
 void* current_time ;
 int fabs (double) ;
 double max (double,double) ;
 void* min (int,int ) ;
 int peer_unfit (struct peer*) ;
 int poll_update (struct peer*,int) ;
 int record_raw_stats (int *,int *,void**,void**,void**,void**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,double,double,int ,void*,scalar_t__*) ;
 int report_event (int ,struct peer*,char*) ;
 int snprintf (char*,int,char*,double,double) ;
 double sys_bdelay ;
 scalar_t__ sys_ceiling ;
 scalar_t__ sys_floor ;
 int sys_precision ;
 int sys_processed ;
 int unpeer (struct peer*) ;

void
process_packet(
 register struct peer *peer,
 register struct pkt *pkt,
 u_int len
 )
{
 double t34, t21;
 double p_offset, p_del, p_disp;
 l_fp p_rec, p_xmt, p_org, p_reftime, ci;
 u_char pmode, pleap, pversion, pstratum;
 char statstr[NTP_MAXSTRLEN];
 p_del = FPTOD(NTOHS_FP(pkt->rootdelay));
 p_offset = 0;
 p_disp = FPTOD(NTOHS_FP(pkt->rootdisp));
 NTOHL_FP(&pkt->reftime, &p_reftime);
 NTOHL_FP(&pkt->org, &p_org);
 NTOHL_FP(&pkt->rec, &p_rec);
 NTOHL_FP(&pkt->xmt, &p_xmt);
 pmode = PKT_MODE(pkt->li_vn_mode);
 pleap = PKT_LEAP(pkt->li_vn_mode);
 pversion = PKT_VERSION(pkt->li_vn_mode);
 pstratum = PKT_TO_STRATUM(pkt->stratum);
 if ( pleap == LEAP_NOTINSYNC
     || pstratum < sys_floor || pstratum >= sys_ceiling)
  peer->flash |= TEST6;
 if (p_del / 2 + p_disp >= MAXDISPERSE)
  peer->flash |= TEST7;






 if (peer->flash & PKT_TEST_MASK) {
  peer->seldisptoolarge++;
  DPRINTF(1, ("packet: flash header %04x\n",
       peer->flash));
  poll_update(peer, peer->hpoll);
  return;
 }




 sys_processed++;
 peer->processed++;





 record_raw_stats(&peer->srcadr,
     peer->dstadr ? &peer->dstadr->sin : ((void*)0),
     &p_org, &p_rec, &p_xmt, &peer->dst,
     pleap, pversion, pmode, pstratum, pkt->ppoll, pkt->precision,
     p_del, p_disp, pkt->refid,
     len - MIN_V4_PKT_LEN, (u_char *)&pkt->exten);
 peer->leap = pleap;
 peer->stratum = min(pstratum, STRATUM_UNSPEC);
 peer->pmode = pmode;
 peer->precision = pkt->precision;
 peer->rootdelay = p_del;
 peer->rootdisp = p_disp;
 peer->refid = pkt->refid;
 peer->reftime = p_reftime;






 if (peer->retry > 0) {
  peer->retry = 0;
  if (peer->reach)
   peer->burst = min(1 << (peer->hpoll -
       peer->minpoll), NTP_SHIFT) - 1;
  else
   peer->burst = NTP_IBURST - 1;
  if (peer->burst > 0)
   peer->nextdate = current_time;
 }
 poll_update(peer, peer->hpoll);







 if (!peer->reach) {
  report_event(PEVNT_REACH, peer, ((void*)0));
  peer->timereachable = current_time;
 }
 peer->reach |= 1;
 if (peer->flip != 0) {
  ci = p_xmt;
  L_SUB(&ci, &peer->dst);
  LFPTOD(&ci, t34);
  ci = p_rec;
  if (peer->flip > 0)
   L_SUB(&ci, &peer->borg);
  else
   L_SUB(&ci, &peer->aorg);
  LFPTOD(&ci, t21);
  p_del = t21 - t34;
  p_offset = (t21 + t34) / 2.;
  if (p_del < 0 || p_del > 1.) {
   snprintf(statstr, sizeof(statstr),
       "t21 %.6f t34 %.6f", t21, t34);
   report_event(PEVNT_XERR, peer, statstr);
   return;
  }




 } else if (peer->pmode == MODE_BROADCAST) {





  if (peer->flags & FLAG_XB) {
   ci = p_org;
   L_SUB(&ci, &peer->aorg);
   LFPTOD(&ci, t34);
   ci = p_org;
   L_SUB(&ci, &peer->borg);
   LFPTOD(&ci, t21);
   peer->aorg = p_xmt;
   peer->borg = peer->dst;
   if (t34 < 0 || t34 > 1.) {

    if (FLAG_BC_VOL & peer->flags)
     goto bcc_init_volley_fail;
    snprintf(statstr, sizeof(statstr),
        "offset %.6f delay %.6f", t21, t34);
    report_event(PEVNT_XERR, peer, statstr);
    return;
   }
   p_offset = t21;
   peer->xleave = t34;





  } else {
   ci = p_xmt;
   L_SUB(&ci, &peer->dst);
   LFPTOD(&ci, t34);
   p_offset = t34;
  }
  if (FLAG_BC_VOL & peer->flags) {
   peer->flags &= ~FLAG_BC_VOL;
   peer->delay = fabs(peer->offset - p_offset) * 2;
   DPRINTF(2, ("broadcast volley: initial delay=%.6f\n",
    peer->delay));
   if (peer->delay > fabs(sys_bdelay)) {
  bcc_init_volley_fail:
    DPRINTF(2, ("%s", "broadcast volley: initial delay exceeds limit\n"));
    unpeer(peer);
    return;
   }
  }
  peer->nextdate = current_time + (1u << peer->ppoll) - 2u;
  p_del = peer->delay;
  p_offset += p_del / 2;







 } else {
  ci = p_xmt;
  L_SUB(&ci, &peer->dst);
  LFPTOD(&ci, t34);
  ci = p_rec;
  L_SUB(&ci, &p_org);
  LFPTOD(&ci, t21);
  p_del = fabs(t21 - t34);
  p_offset = (t21 + t34) / 2.;
 }
 p_del = max(p_del, LOGTOD(sys_precision));
 p_disp = LOGTOD(sys_precision) + LOGTOD(peer->precision) +
     clock_phi * p_del;
 clock_filter(peer, p_offset + peer->bias, p_del, p_disp);






 if ( (FLAG_BC_VOL & peer->flags)
     && MODE_CLIENT == peer->hmode
     && !(TEST11 & peer_unfit(peer))) {
  peer->hmode = MODE_BCLIENT;

 }
}
