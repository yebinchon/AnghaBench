
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer {int flags; int srcadr; int associd; } ;


 int FLAG_PREEMPT ;
 int FLAG_REFCLOCK ;
 int PEVNT_DEMOBIL ;
 int TRUE ;
 int free_peer (struct peer*,int ) ;
 int mprintf_event (int ,struct peer*,char*,int ) ;
 int peer_associations ;
 int peer_demobilizations ;
 int peer_preempt ;
 int refclock_unpeer (struct peer*) ;
 int restrict_source (int *,int,int ) ;
 int set_peerdstadr (struct peer*,int *) ;

void
unpeer(
 struct peer *peer
 )
{
 mprintf_event(PEVNT_DEMOBIL, peer, "assoc %u", peer->associd);
 restrict_source(&peer->srcadr, 1, 0);
 set_peerdstadr(peer, ((void*)0));
 peer_demobilizations++;
 peer_associations--;
 if (FLAG_PREEMPT & peer->flags)
  peer_preempt--;
 free_peer(peer, TRUE);
}
