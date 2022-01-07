
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int32 ;
typedef int u_int ;
typedef scalar_t__ u_char ;
struct peer {scalar_t__ cast_flags; int associd; int flags; scalar_t__ minpoll; scalar_t__ maxpoll; scalar_t__ hpoll; scalar_t__ keyid; int ttl; scalar_t__ version; scalar_t__ hmode; int srcadr; TYPE_1__* dstadr; void* timereceived; void* timereachable; void* timereset; int precision; void* ident; void* hostname; } ;
typedef int sockaddr_u ;
typedef scalar_t__ keyid_t ;
struct TYPE_9__ {int sin; int fd; } ;
typedef TYPE_1__ endpt ;


 TYPE_1__* ANY_INTERFACE_CHOOSE (int *) ;
 int DEBUG_REQUIRE (int *) ;
 int DPRINTF (int,char*) ;
 int FLAG_PREEMPT ;
 int FLAG_SKEY ;
 int INSIST (int) ;
 scalar_t__ ISREFCLOCKADR (int *) ;
 int LINK_SLIST (int ,struct peer*,int ) ;
 int LOG_ERR ;
 scalar_t__ MDF_ACAST ;
 scalar_t__ MDF_BCAST ;
 scalar_t__ MDF_BCLNT ;
 scalar_t__ MDF_MCAST ;
 scalar_t__ MDF_POOL ;
 int NTP_HASH_ADDR (int *) ;
 int NTP_HASH_MASK ;
 scalar_t__ NTP_MAXDPOLL ;
 scalar_t__ NTP_MAXKEY ;
 int NTP_MAXPOLL ;
 scalar_t__ NTP_MINDPOLL ;
 int NTP_MINPOLL ;
 int PEVNT_MOBIL ;
 int UNLINK_HEAD_SLIST (struct peer*,int ,int ) ;
 int adr_link ;
 int aid_link ;
 int * assoc_hash ;
 int * assoc_hash_count ;
 int crypto_flags ;
 scalar_t__ current_association_ID ;
 void* current_time ;
 int enable_broadcast (TYPE_1__*,int *) ;
 int enable_multicast_if (TYPE_1__*,int *) ;
 void* estrdup (char const*) ;
 struct peer* findexistingpeer (int *,char const*,struct peer*,scalar_t__,scalar_t__,int*) ;
 TYPE_1__* findinterface (int *) ;
 int free_peer (struct peer*,int ) ;
 int getmorepeermem () ;
 int latoa (TYPE_1__*) ;
 scalar_t__ max (scalar_t__,int ) ;
 scalar_t__ min (scalar_t__,int ) ;
 scalar_t__ mode_ntpdate ;
 int mprintf_event (int ,struct peer*,char*,int) ;
 int msyslog (int ,char*,...) ;
 int p_link ;
 int peer_associations ;
 int peer_clear (struct peer*,char*) ;
 int peer_free ;
 scalar_t__ peer_free_count ;
 int * peer_hash ;
 int * peer_hash_count ;
 int peer_list ;
 int peer_ntpdate ;
 int peer_preempt ;
 int refclock_newpeer (struct peer*) ;
 int restrict_source (int *,int ,int ) ;
 int * select_peerinterface (struct peer*,int *,TYPE_1__*) ;
 int set_peerdstadr (struct peer*,int *) ;
 char const* stoa (int *) ;
 int sys_precision ;

struct peer *
newpeer(
 sockaddr_u * srcadr,
 const char * hostname,
 endpt * dstadr,
 int ippeerlimit,
 u_char hmode,
 u_char version,
 u_char minpoll,
 u_char maxpoll,
 u_int flags,
 u_char cast_flags,
 u_int32 ttl,
 keyid_t key,
 const char * ident
 )
{
 struct peer * peer;
 u_int hash;
 int ip_count = 0;


 DEBUG_REQUIRE(srcadr);
 INSIST(((void*)0) == hostname || (MDF_POOL & cast_flags));
 if (dstadr != ((void*)0)) {
  peer = findexistingpeer(srcadr, hostname, ((void*)0), hmode,
     cast_flags, &ip_count);
  while (peer != ((void*)0)) {
   if ( peer->dstadr == dstadr
       || ( (MDF_BCLNT & cast_flags)
    && (MDF_BCLNT & peer->cast_flags)))
    break;

   if (dstadr == ANY_INTERFACE_CHOOSE(srcadr) &&
       peer->dstadr == findinterface(srcadr))
    break;

   peer = findexistingpeer(srcadr, hostname, peer,
      hmode, cast_flags, &ip_count);
  }
 } else {

  peer = findexistingpeer(srcadr, hostname, ((void*)0), hmode,
     cast_flags, &ip_count);
 }







 if (peer != ((void*)0)) {
  DPRINTF(2, ("newpeer(%s) found existing association\n",
   (hostname)
       ? hostname
       : stoa(srcadr)));
  return ((void*)0);
 }

DPRINTF(1, ("newpeer(%s) found no existing and %d other associations\n",
  (hostname)
      ? hostname
      : stoa(srcadr),
  ip_count));


 if (ippeerlimit > -1) {
  if (ip_count + 1 > ippeerlimit) {
   DPRINTF(2, ("newpeer(%s) denied - ippeerlimit %d\n",
    (hostname)
        ? hostname
        : stoa(srcadr),
    ippeerlimit));
   return ((void*)0);
  }
 } else {
  DPRINTF(1, ("newpeer(%s) - ippeerlimit %d ignored\n",
   (hostname)
       ? hostname
       : stoa(srcadr),
   ippeerlimit));
 }





 if (peer_free_count == 0)
  getmorepeermem();
 UNLINK_HEAD_SLIST(peer, peer_free, p_link);
 INSIST(peer != ((void*)0));
 peer_free_count--;
 peer_associations++;
 if (FLAG_PREEMPT & flags)
  peer_preempt++;




 peer->associd = current_association_ID;
 if (++current_association_ID == 0)
  ++current_association_ID;

 peer->srcadr = *srcadr;
 if (hostname != ((void*)0))
  peer->hostname = estrdup(hostname);
 peer->hmode = hmode;
 peer->version = version;
 peer->flags = flags;
 peer->cast_flags = cast_flags;
 set_peerdstadr(peer,
         select_peerinterface(peer, srcadr, dstadr));
 if (minpoll == 0)
  peer->minpoll = NTP_MINDPOLL;
 else
  peer->minpoll = min(minpoll, NTP_MAXPOLL);
 if (maxpoll == 0)
  peer->maxpoll = NTP_MAXDPOLL;
 else
  peer->maxpoll = max(maxpoll, NTP_MINPOLL);
 if (peer->minpoll > peer->maxpoll)
  peer->minpoll = peer->maxpoll;

 if (peer->dstadr != ((void*)0))
  DPRINTF(3, ("newpeer(%s): using fd %d and our addr %s\n",
   stoa(srcadr), peer->dstadr->fd,
   stoa(&peer->dstadr->sin)));
 else
  DPRINTF(3, ("newpeer(%s): local interface currently not bound\n",
   stoa(srcadr)));




 if ((MDF_BCAST & cast_flags) && peer->dstadr != ((void*)0))
  enable_broadcast(peer->dstadr, srcadr);




 if ((MDF_MCAST & cast_flags) && peer->dstadr != ((void*)0))
  enable_multicast_if(peer->dstadr, srcadr);





 peer->ttl = ttl;
 peer->keyid = key;
 if (ident != ((void*)0))
  peer->ident = estrdup(ident);
 peer->precision = sys_precision;
 peer->hpoll = peer->minpoll;
 if (cast_flags & MDF_ACAST)
  peer_clear(peer, "ACST");
 else if (cast_flags & MDF_POOL)
  peer_clear(peer, "POOL");
 else if (cast_flags & MDF_MCAST)
  peer_clear(peer, "MCST");
 else if (cast_flags & MDF_BCAST)
  peer_clear(peer, "BCST");
 else
  peer_clear(peer, "INIT");
 if (mode_ntpdate)
  peer_ntpdate++;




 peer->timereset = current_time;
 peer->timereachable = current_time;
 peer->timereceived = current_time;

 if (ISREFCLOCKADR(&peer->srcadr)) {
  msyslog(LOG_ERR, "refclock %s isn't supported. ntpd was compiled without refclock support.",
   stoa(&peer->srcadr));
  set_peerdstadr(peer, ((void*)0));
  free_peer(peer, 0);
  return ((void*)0);

 }




 hash = NTP_HASH_ADDR(&peer->srcadr);
 LINK_SLIST(peer_hash[hash], peer, adr_link);
 peer_hash_count[hash]++;
 hash = peer->associd & NTP_HASH_MASK;
 LINK_SLIST(assoc_hash[hash], peer, aid_link);
 assoc_hash_count[hash]++;
 LINK_SLIST(peer_list, peer, p_link);

 restrict_source(&peer->srcadr, 0, 0);
 mprintf_event(PEVNT_MOBIL, peer, "assoc %d", peer->associd);
 DPRINTF(1, ("newpeer: %s->%s mode %u vers %u poll %u %u flags 0x%x 0x%x ttl %u key %08x\n",
     latoa(peer->dstadr), stoa(&peer->srcadr), peer->hmode,
     peer->version, peer->minpoll, peer->maxpoll, peer->flags,
     peer->cast_flags, peer->ttl, peer->keyid));
 return peer;
}
