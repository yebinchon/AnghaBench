
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSOCID_MAX ;
 int COUNTOF (int *) ;
 int LINK_SLIST (int ,int *,int ) ;
 int current_association_ID ;
 int * init_peer_alloc ;
 int initial_association_ID ;
 int ntp_random () ;
 int p_link ;
 int peer_free ;
 int peer_free_count ;
 int total_peer_structs ;

void
init_peer(void)
{
 int i;




 for (i = COUNTOF(init_peer_alloc) - 1; i >= 0; i--)
  LINK_SLIST(peer_free, &init_peer_alloc[i], p_link);
 total_peer_structs = COUNTOF(init_peer_alloc);
 peer_free_count = COUNTOF(init_peer_alloc);




 do
  current_association_ID = ntp_random() & ASSOCID_MAX;
 while (!current_association_ID);
 initial_association_ID = current_association_ID;
}
