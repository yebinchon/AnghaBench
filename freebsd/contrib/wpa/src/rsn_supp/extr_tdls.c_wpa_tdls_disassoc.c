
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpa_tdls_remove_peers (struct wpa_sm*) ;

void wpa_tdls_disassoc(struct wpa_sm *sm)
{
 wpa_printf(MSG_DEBUG, "TDLS: Remove peers on disassociation");
 wpa_tdls_remove_peers(sm);
}
