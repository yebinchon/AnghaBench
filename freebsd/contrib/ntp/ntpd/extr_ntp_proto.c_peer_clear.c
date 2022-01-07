
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_char ;
struct peer {int hpoll; int minpoll; scalar_t__ hmode; int flags; int flip; size_t* filter_order; int nextdate; int update; int outdate; int associd; void* refresh; TYPE_1__* procptr; int refid; int stratum; int leap; void** filter_disp; int bxmt; int jitter; int flash; void* disp; int maxpoll; int ppoll; int * issuer; int * subject; int * cmmd; int sndval; int encrypt; int recval; int cookval; int * iffval; } ;
typedef int l_fp ;
struct TYPE_2__ {scalar_t__ coderecv; scalar_t__ codeproc; } ;


 int BN_free (int *) ;
 int CLEAR_TO_ZERO (struct peer*) ;
 int DPRINTF (int,char*) ;
 int FLAG_REFCLOCK ;
 int FLAG_XLEAVE ;
 int LEAP_NOTINSYNC ;
 int LEN_CLEAR_TO_ZERO (struct peer*) ;
 int LOGTOD (int ) ;
 void* MAXDISPERSE ;
 scalar_t__ MODE_BCLIENT ;
 scalar_t__ MODE_PASSIVE ;
 int NTP_REFRESH ;
 size_t NTP_SHIFT ;
 int STRATUM_UNSPEC ;
 void* current_time ;
 int free (int *) ;
 scalar_t__ initializing ;
 int key_expire (struct peer*) ;
 int memcpy (int *,char const*,int) ;
 int memset (int ,int ,int ) ;
 scalar_t__ ntp_minpkt ;
 int ntp_random () ;
 scalar_t__ peer_associations ;
 int peer_unfit (struct peer*) ;
 int sys_precision ;
 int value_free (int *) ;

void
peer_clear(
 struct peer *peer,
 const char *ident
 )
{
 u_char u;
 l_fp bxmt = peer->bxmt;
 memset(CLEAR_TO_ZERO(peer), 0, LEN_CLEAR_TO_ZERO(peer));
 peer->ppoll = peer->maxpoll;
 peer->hpoll = peer->minpoll;
 peer->disp = MAXDISPERSE;
 peer->flash = peer_unfit(peer);
 peer->jitter = LOGTOD(sys_precision);


 if (peer->hmode == MODE_BCLIENT)
  peer->bxmt = bxmt;




 if (peer->flags & FLAG_XLEAVE)
  peer->flip = 1;
 for (u = 0; u < NTP_SHIFT; u++) {
  peer->filter_order[u] = u;
  peer->filter_disp[u] = MAXDISPERSE;
 }



  peer->leap = LEAP_NOTINSYNC;
  peer->stratum = STRATUM_UNSPEC;
  memcpy(&peer->refid, ident, 4);
 peer->nextdate = peer->update = peer->outdate = current_time;
 if (initializing) {
  peer->nextdate += peer_associations;
 } else if (MODE_PASSIVE == peer->hmode) {
  peer->nextdate += ntp_minpkt;
 } else {
  peer->nextdate += ntp_random() % peer->minpoll;
 }



 DPRINTF(1, ("peer_clear: at %ld next %ld associd %d refid %s\n",
      current_time, peer->nextdate, peer->associd,
      ident));
}
