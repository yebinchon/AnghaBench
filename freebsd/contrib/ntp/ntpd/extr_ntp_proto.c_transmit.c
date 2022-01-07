
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct peer {int hpoll; scalar_t__ outdate; scalar_t__ timelastrec; int reach; int cast_flags; scalar_t__ unreach; scalar_t__ ttl; scalar_t__ burst; int flags; scalar_t__ retry; scalar_t__ hmode; int maxpoll; int ppoll; } ;


 int FLAG_BURST ;
 int FLAG_CONFIG ;
 int FLAG_IBURST ;
 int FLAG_PREEMPT ;
 scalar_t__ LEAP_NOTINSYNC ;
 int LOG_NOTICE ;
 int MAXDISPERSE ;
 int MDF_ACAST ;
 int MDF_BCAST ;
 int MDF_MCAST ;
 int MDF_POOL ;
 scalar_t__ MODE_BCLIENT ;
 void* NTP_RETRY ;
 scalar_t__ NTP_UNREACH ;
 int PEVNT_RESTART ;
 int PEVNT_UNREACH ;
 int clock_filter (struct peer*,int,int,int ) ;
 void* current_time ;
 int exit (int ) ;
 scalar_t__ mode_ntpdate ;
 int msyslog (int ,char*) ;
 int msyslog_term ;
 int peer_associations ;
 int peer_clear (struct peer*,char*) ;
 scalar_t__ peer_ntpdate ;
 int peer_unfit (struct peer*) ;
 int peer_xmit (struct peer*) ;
 int poll_update (struct peer*,int) ;
 int pool_xmit (struct peer*) ;
 int printf (char*) ;
 int report_event (int ,struct peer*,char*) ;
 scalar_t__ score_all (struct peer*) ;
 scalar_t__ sys_beacon ;
 scalar_t__ sys_leap ;
 int sys_maxclock ;
 scalar_t__ sys_minclock ;
 int sys_poll ;
 scalar_t__ sys_survivors ;
 scalar_t__ sys_ttlmax ;
 int unpeer (struct peer*) ;

void
transmit(
 struct peer *peer
 )
{
 u_char hpoll;







 hpoll = peer->hpoll;





 if (peer->outdate > peer->timelastrec && !peer->reach)
  peer->ppoll = peer->maxpoll;





 if (peer->cast_flags & (MDF_BCAST | MDF_MCAST)) {
  peer->outdate = current_time;
  poll_update(peer, hpoll);
  if (sys_leap != LEAP_NOTINSYNC)
   peer_xmit(peer);
  return;
 }
 if (peer->cast_flags & MDF_ACAST) {
  peer->outdate = current_time;
  poll_update(peer, hpoll);
  if (peer->unreach > sys_beacon) {
   peer->unreach = 0;
   peer->ttl = 0;
   peer_xmit(peer);
  } else if ( sys_survivors < sys_minclock
      || peer_associations < sys_maxclock) {
   if (peer->ttl < sys_ttlmax)
    peer->ttl++;
   peer_xmit(peer);
  }
  peer->unreach++;
  return;
 }
 if (peer->cast_flags & MDF_POOL) {
  peer->outdate = current_time;
  poll_update(peer, hpoll);
  if ( (peer_associations <= 2 * sys_maxclock)
      && ( peer_associations < sys_maxclock
   || sys_survivors < sys_minclock))
   pool_xmit(peer);
  return;
 }






 if (peer->burst == 0) {
  u_char oreach;






  oreach = peer->reach;
  peer->outdate = current_time;
  peer->unreach++;
  peer->reach <<= 1;
  if (!peer->reach) {






   clock_filter(peer, 0., 0., MAXDISPERSE);
   if (oreach) {
    peer_unfit(peer);
    report_event(PEVNT_UNREACH, peer, ((void*)0));
   }
   if ( (peer->flags & FLAG_IBURST)
       && peer->retry == 0)
    peer->retry = NTP_RETRY;
  } else {
   hpoll = sys_poll;
   if (!(peer->flags & FLAG_PREEMPT))
    peer->unreach = 0;
   if ( (peer->flags & FLAG_BURST)
       && peer->retry == 0
       && !peer_unfit(peer))
    peer->retry = NTP_RETRY;
  }
  if (peer->unreach >= NTP_UNREACH) {
   hpoll++;

   if (!(peer->flags & (FLAG_CONFIG | FLAG_PREEMPT))) {
    report_event(PEVNT_RESTART, peer, "timeout");
    peer_clear(peer, "TIME");
    unpeer(peer);
    return;
   }
   if ( (peer->flags & FLAG_PREEMPT)
       && (peer_associations > sys_maxclock)
       && score_all(peer)) {
    report_event(PEVNT_RESTART, peer, "timeout");
    peer_clear(peer, "TIME");
    unpeer(peer);
    return;
   }
  }
 } else {
  peer->burst--;
  if (peer->burst == 0) {






   if (mode_ntpdate) {
    peer_ntpdate--;
    if (peer_ntpdate == 0) {
     msyslog(LOG_NOTICE,
         "ntpd: no servers found");
     if (!msyslog_term)
      printf(
          "ntpd: no servers found\n");
     exit (0);
    }
   }
  }
 }
 if (peer->retry > 0)
  peer->retry--;




 poll_update(peer, hpoll);
 if (peer->hmode != MODE_BCLIENT)
  peer_xmit(peer);

 return;
}
