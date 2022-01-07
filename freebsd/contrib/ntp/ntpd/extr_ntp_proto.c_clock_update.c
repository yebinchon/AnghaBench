
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct peer {scalar_t__ minpoll; scalar_t__ maxpoll; scalar_t__ stratum; double rootdisp; double disp; double update; int associd; int epoch; int dst; scalar_t__ rootdelay; scalar_t__ delay; int srcadr; int refid; } ;
struct TYPE_3__ {int l_ui; } ;
typedef TYPE_1__ l_fp ;


 int DPRINTF (int,char*) ;
 int FALSE ;
 int LEAP_NOTINSYNC ;
 int LEAP_NOWARNING ;
 double LOGTOD (int ) ;
 int LSPROX_NOWARN ;
 int L_CLR (int *) ;
 scalar_t__ STRATUM_REFCLOCK ;
 scalar_t__ STRATUM_UNSPEC ;
 int TRUE ;
 int addr2refid (int *) ;
 int clear_all () ;
 double clock_phi ;
 int close (int) ;
 int crypto_flags ;
 int crypto_update () ;
 double current_time ;
 int exit (int) ;
 double fabs (int ) ;
 int get_systime (TYPE_1__*) ;
 char* getenv (char*) ;
 int leap_vote_del ;
 int leap_vote_ins ;
 int leapsec ;
 int leapsec_add_dyn (int ,int ,int *) ;
 int leapsec_reset_frame () ;
 int local_clock (struct peer*,int ) ;
 int memcpy (int *,char*,int) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int pause () ;
 int poll_update (struct peer*,scalar_t__) ;
 int printf (char*,char*) ;
 int scf_error () ;
 char* scf_strerror (int ) ;
 int set_sys_leap (int ) ;
 int smf_maintain_instance (char*,int ) ;
 int sys_epoch ;
 double sys_jitter ;
 int sys_leap ;
 double sys_mindisp ;
 int sys_offset ;
 struct peer* sys_peer ;
 scalar_t__ sys_poll ;
 int sys_precision ;
 int sys_refid ;
 int sys_reftime ;
 scalar_t__ sys_rootdelay ;
 double sys_rootdisp ;
 scalar_t__ sys_stratum ;
 int sys_survivors ;
 int waitsync_fd_to_close ;

__attribute__((used)) static void
clock_update(
 struct peer *peer
 )
{
 double dtemp;
 l_fp now;
 sys_peer = peer;
 sys_epoch = peer->epoch;
 if (sys_poll < peer->minpoll)
  sys_poll = peer->minpoll;
 if (sys_poll > peer->maxpoll)
  sys_poll = peer->maxpoll;
 poll_update(peer, sys_poll);
 sys_stratum = min(peer->stratum + 1, STRATUM_UNSPEC);
 if ( peer->stratum == STRATUM_REFCLOCK
     || peer->stratum == STRATUM_UNSPEC)
  sys_refid = peer->refid;
 else
  sys_refid = addr2refid(&peer->srcadr);
 dtemp = peer->rootdisp
  + peer->disp
  + sys_jitter
  + clock_phi * (current_time - peer->update)
  + fabs(sys_offset);

 if (dtemp > sys_mindisp)
  sys_rootdisp = dtemp;
 else
  sys_rootdisp = sys_mindisp;
 sys_rootdelay = peer->delay + peer->rootdelay;
 sys_reftime = peer->dst;

 DPRINTF(1, ("clock_update: at %lu sample %lu associd %d\n",
      current_time, peer->epoch, peer->associd));





 switch (local_clock(peer, sys_offset)) {




 case -1:
  exit (-1);





 case 2:
  clear_all();
  set_sys_leap(LEAP_NOTINSYNC);
  sys_stratum = STRATUM_UNSPEC;
  memcpy(&sys_refid, "STEP", 4);
  sys_rootdelay = 0;
  sys_rootdisp = 0;
  L_CLR(&sys_reftime);
  sys_jitter = LOGTOD(sys_precision);
  leapsec_reset_frame();
  break;




 case 1:






  if (sys_leap == LEAP_NOTINSYNC) {
   set_sys_leap(LEAP_NOWARNING);
  }
  if (leapsec == LSPROX_NOWARN) {
   if ( leap_vote_ins > leap_vote_del
       && leap_vote_ins > sys_survivors / 2) {
    get_systime(&now);
    leapsec_add_dyn(TRUE, now.l_ui, ((void*)0));
   }
   if ( leap_vote_del > leap_vote_ins
       && leap_vote_del > sys_survivors / 2) {
    get_systime(&now);
    leapsec_add_dyn(FALSE, now.l_ui, ((void*)0));
   }
  }
  break;





 default:
  break;
 }
}
