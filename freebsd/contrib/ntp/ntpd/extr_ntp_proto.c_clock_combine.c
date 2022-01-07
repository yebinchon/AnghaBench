
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int synch; int seljit; TYPE_1__* peer; } ;
typedef TYPE_2__ peer_select ;
struct TYPE_4__ {double offset; } ;


 double DIFF (double,double) ;
 int SQRT (scalar_t__) ;
 scalar_t__ SQUARE (int ) ;
 int sys_jitter ;
 double sys_offset ;

__attribute__((used)) static void
clock_combine(
 peer_select * peers,
 int npeers,
 int syspeer
 )
{
 int i;
 double x, y, z, w;

 y = z = w = 0;
 for (i = 0; i < npeers; i++) {
  x = 1. / peers[i].synch;
  y += x;
  z += x * peers[i].peer->offset;
  w += x * DIFF(peers[i].peer->offset,
      peers[syspeer].peer->offset);
 }
 sys_offset = z / y;
 sys_jitter = SQRT(w / y + SQUARE(peers[syspeer].seljit));
}
