
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer {int delay; int rootdelay; int disp; int update; int rootdisp; int jitter; } ;


 int clock_phi ;
 int current_time ;
 double sys_mindisp ;

__attribute__((used)) static double
root_distance(
 struct peer *peer
 )
{
 double dtemp;
 dtemp = (peer->delay + peer->rootdelay) / 2
  + peer->disp
    + clock_phi * (current_time - peer->update)
  + peer->rootdisp
  + peer->jitter;







 if (dtemp < sys_mindisp)
  dtemp = sys_mindisp;
 return (dtemp);
}
