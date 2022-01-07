
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ p2p_group_idle; } ;


 int MSG_DEBUG ;
 int P2P_GROUP_REMOVAL_IDLE_TIMEOUT ;
 int wpa_printf (int ,char*) ;
 int wpas_p2p_group_delete (struct wpa_supplicant*,int ) ;
 int wpas_p2p_is_client (struct wpa_supplicant*) ;

__attribute__((used)) static void wpas_p2p_group_idle_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;

 if (wpa_s->conf->p2p_group_idle == 0 && !wpas_p2p_is_client(wpa_s)) {
  wpa_printf(MSG_DEBUG, "P2P: Ignore group idle timeout - "
      "disabled");
  return;
 }

 wpa_printf(MSG_DEBUG, "P2P: Group idle timeout reached - terminate "
     "group");
 wpas_p2p_group_delete(wpa_s, P2P_GROUP_REMOVAL_IDLE_TIMEOUT);
}
