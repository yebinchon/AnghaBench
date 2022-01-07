
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer {scalar_t__ leap; int stratum; int flags; int flash; int reach; int hpoll; } ;


 int FLAG_NOSELECT ;
 int FLAG_REFCLOCK ;
 scalar_t__ LEAP_NOTINSYNC ;
 int PEER_TEST_MASK ;
 int TEST10 ;
 int TEST11 ;
 int TEST12 ;
 int TEST13 ;
 int ULOGTOD (int ) ;
 int clock_phi ;
 scalar_t__ local_refid (struct peer*) ;
 scalar_t__ root_distance (struct peer*) ;
 int sys_ceiling ;
 int sys_floor ;
 scalar_t__ sys_maxdist ;

int
peer_unfit(
 struct peer *peer
 )
{
 int rval = 0;






 if ( peer->leap == LEAP_NOTINSYNC
     || peer->stratum < sys_floor
     || peer->stratum >= sys_ceiling) {
  rval |= TEST10;
 }






 if ( !(peer->flags & FLAG_REFCLOCK)
     && root_distance(peer) >= sys_maxdist
          + clock_phi * ULOGTOD(peer->hpoll)) {
  rval |= TEST11;
 }







 if (peer->stratum > 1 && local_refid(peer)) {
  rval |= TEST12;
 }





 if (!peer->reach || (peer->flags & FLAG_NOSELECT)) {
  rval |= TEST13;
 }

 peer->flash &= ~PEER_TEST_MASK;
 peer->flash |= rval;
 return (rval);
}
