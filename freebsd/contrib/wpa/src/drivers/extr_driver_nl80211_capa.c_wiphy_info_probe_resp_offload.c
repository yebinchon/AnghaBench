
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wpa_driver_capa {int probe_resp_offloads; int flags; } ;
struct nlattr {int dummy; } ;


 int MSG_DEBUG ;
 int WPA_DRIVER_FLAGS_PROBE_RESP_OFFLOAD ;
 int nla_get_u32 (struct nlattr*) ;
 int probe_resp_offload_support (int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wiphy_info_probe_resp_offload(struct wpa_driver_capa *capa,
       struct nlattr *tb)
{
 u32 protocols;

 if (tb == ((void*)0))
  return;

 protocols = nla_get_u32(tb);
 wpa_printf(MSG_DEBUG, "nl80211: Supports Probe Response offload in AP "
     "mode");
 capa->flags |= WPA_DRIVER_FLAGS_PROBE_RESP_OFFLOAD;
 capa->probe_resp_offloads = probe_resp_offload_support(protocols);
}
