
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int MSG_DEBUG ;
 int P2P_GROUP_REMOVAL_FREQ_CONFLICT ;
 int wpa_printf (int ,char*) ;
 int wpas_p2p_group_delete (struct wpa_supplicant*,int ) ;

__attribute__((used)) static void wpas_p2p_group_freq_conflict(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;

 wpa_printf(MSG_DEBUG, "P2P: Frequency conflict - terminate group");
 wpas_p2p_group_delete(wpa_s, P2P_GROUP_REMOVAL_FREQ_CONFLICT);
}
