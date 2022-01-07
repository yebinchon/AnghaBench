
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer {int flags; struct peer* p_link; } ;


 int DPRINTF (int,char*) ;
 int FLAG_PREEMPT ;
 int current_time ;
 struct peer* peer_list ;
 int score (struct peer*) ;

int
score_all(
 struct peer *peer
 )
{
 struct peer *speer;
 int temp, tamp;
 int x;






 tamp = score(peer);
 temp = 100;
 for (speer = peer_list; speer != ((void*)0); speer = speer->p_link)
  if (speer->flags & FLAG_PREEMPT) {
   x = score(speer);
   if (x < temp)
    temp = x;
  }
 DPRINTF(1, ("score_all: at %lu score %d min %d\n",
      current_time, tamp, temp));

 if (tamp != temp)
  temp = 0;

 return temp;
}
