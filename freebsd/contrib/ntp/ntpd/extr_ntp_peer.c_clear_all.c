
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer {int cast_flags; struct peer* p_link; } ;


 int DPRINTF (int,char*) ;
 int MDF_TXONLY_MASK ;
 int current_time ;
 int peer_clear (struct peer*,char*) ;
 struct peer* peer_list ;

void
clear_all(void)
{
 struct peer *p;





 for (p = peer_list; p != ((void*)0); p = p->p_link)
  if (!(MDF_TXONLY_MASK & p->cast_flags))
   peer_clear(p, "STEP");

 DPRINTF(1, ("clear_all: at %lu\n", current_time));
}
