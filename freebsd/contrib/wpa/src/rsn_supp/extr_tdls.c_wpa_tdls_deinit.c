
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int * l2_tdls; } ;


 int l2_packet_deinit (int *) ;
 int wpa_tdls_remove_peers (struct wpa_sm*) ;

void wpa_tdls_deinit(struct wpa_sm *sm)
{
 if (sm == ((void*)0))
  return;

 if (sm->l2_tdls)
  l2_packet_deinit(sm->l2_tdls);
 sm->l2_tdls = ((void*)0);

 wpa_tdls_remove_peers(sm);
}
