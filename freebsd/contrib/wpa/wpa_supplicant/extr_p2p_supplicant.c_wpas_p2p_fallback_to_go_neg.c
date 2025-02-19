
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int p2p_go_he; int p2p_go_max_oper_chwidth; int p2p_go_vht; int p2p_go_ht40; int p2p_pd_before_go_neg; int p2p_persistent_id; int p2p_go_vht_center_freq2; int p2p_connect_freq; int p2p_go_intent; int p2p_persistent_group; int p2p_wps_method; int p2p_pin; int pending_join_dev_addr; TYPE_1__* global; } ;
struct TYPE_2__ {struct wpa_supplicant* p2p_init_wpa_s; struct wpa_supplicant* p2p_group_formation; } ;


 int MSG_DEBUG ;
 int P2P_GROUP_REMOVAL_SILENT ;
 int offchannel_send_action_done (struct wpa_supplicant*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpas_p2p_connect (struct wpa_supplicant*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int *,int ) ;
 int wpas_p2p_group_delete (struct wpa_supplicant*,int ) ;

__attribute__((used)) static int wpas_p2p_fallback_to_go_neg(struct wpa_supplicant *wpa_s,
           int group_added)
{
 struct wpa_supplicant *group = wpa_s;
 int ret = 0;

 if (wpa_s->global->p2p_group_formation)
  group = wpa_s->global->p2p_group_formation;
 wpa_s = wpa_s->global->p2p_init_wpa_s;
 offchannel_send_action_done(wpa_s);
 if (group_added)
  ret = wpas_p2p_group_delete(group, P2P_GROUP_REMOVAL_SILENT);
 wpa_dbg(wpa_s, MSG_DEBUG, "P2P: Fall back to GO Negotiation");
 wpas_p2p_connect(wpa_s, wpa_s->pending_join_dev_addr, wpa_s->p2p_pin,
    wpa_s->p2p_wps_method, wpa_s->p2p_persistent_group, 0,
    0, 0, wpa_s->p2p_go_intent, wpa_s->p2p_connect_freq,
    wpa_s->p2p_go_vht_center_freq2,
    wpa_s->p2p_persistent_id,
    wpa_s->p2p_pd_before_go_neg,
    wpa_s->p2p_go_ht40,
    wpa_s->p2p_go_vht,
    wpa_s->p2p_go_max_oper_chwidth,
    wpa_s->p2p_go_he, ((void*)0), 0);
 return ret;
}
