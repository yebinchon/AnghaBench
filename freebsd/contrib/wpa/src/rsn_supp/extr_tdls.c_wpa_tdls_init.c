
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int tdls_supported; scalar_t__ tdls_chan_switch; scalar_t__ tdls_external_setup; int * l2_tdls; int own_addr; scalar_t__ ifname; scalar_t__ bridge_ifname; } ;


 int ETH_P_80211_ENCAP ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int * l2_packet_init (scalar_t__,int ,int ,int ,struct wpa_sm*,int ) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpa_sm_tdls_get_capa (struct wpa_sm*,int*,scalar_t__*,scalar_t__*) ;
 int wpa_supplicant_rx_tdls ;

int wpa_tdls_init(struct wpa_sm *sm)
{
 if (sm == ((void*)0))
  return -1;

 sm->l2_tdls = l2_packet_init(sm->bridge_ifname ? sm->bridge_ifname :
         sm->ifname,
         sm->own_addr,
         ETH_P_80211_ENCAP, wpa_supplicant_rx_tdls,
         sm, 0);
 if (sm->l2_tdls == ((void*)0)) {
  wpa_printf(MSG_ERROR, "TDLS: Failed to open l2_packet "
      "connection");
  return -1;
 }





 if (wpa_sm_tdls_get_capa(sm, &sm->tdls_supported,
     &sm->tdls_external_setup,
     &sm->tdls_chan_switch) < 0) {
  sm->tdls_supported = 1;
  sm->tdls_external_setup = 0;
 }

 wpa_printf(MSG_DEBUG, "TDLS: TDLS operation%s supported by "
     "driver", sm->tdls_supported ? "" : " not");
 wpa_printf(MSG_DEBUG, "TDLS: Driver uses %s link setup",
     sm->tdls_external_setup ? "external" : "internal");
 wpa_printf(MSG_DEBUG, "TDLS: Driver %s TDLS channel switching",
     sm->tdls_chan_switch ? "supports" : "does not support");

 return 0;
}
