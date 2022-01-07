
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_group_interface; struct wpa_supplicant* p2pdev; int p2p_in_provisioning; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ P2P_GROUP_INTERFACE_CLIENT ;
 int WPS_EVENT_OVERLAP ;
 int wpa_msg_ctrl (struct wpa_supplicant*,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpas_p2p_group_formation_failed (struct wpa_supplicant*,int ) ;

int wpas_p2p_notif_pbc_overlap(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->p2p_group_interface != P2P_GROUP_INTERFACE_CLIENT &&
     !wpa_s->p2p_in_provisioning)
  return 0;

 wpa_printf(MSG_DEBUG, "P2P: Terminate connection due to WPS PBC "
     "session overlap");
 if (wpa_s != wpa_s->p2pdev)
  wpa_msg_ctrl(wpa_s->p2pdev, MSG_INFO, WPS_EVENT_OVERLAP);
 wpas_p2p_group_formation_failed(wpa_s, 0);
 return 1;
}
