
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct p2p_group {TYPE_1__* cfg; scalar_t__ beacon_update; } ;
struct TYPE_2__ {int cb_ctx; int (* ie_update ) (int ,struct wpabuf*,struct wpabuf*) ;} ;


 int MSG_MSGDUMP ;
 struct wpabuf* p2p_group_build_beacon_ie (struct p2p_group*) ;
 struct wpabuf* p2p_group_build_probe_resp_ie (struct p2p_group*) ;
 int stub1 (int ,struct wpabuf*,struct wpabuf*) ;
 int wifi_display_group_update (struct p2p_group*) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;

void p2p_group_update_ies(struct p2p_group *group)
{
 struct wpabuf *beacon_ie;
 struct wpabuf *probe_resp_ie;





 probe_resp_ie = p2p_group_build_probe_resp_ie(group);
 if (probe_resp_ie == ((void*)0))
  return;
 wpa_hexdump_buf(MSG_MSGDUMP, "P2P: Update GO Probe Response P2P IE",
   probe_resp_ie);

 if (group->beacon_update) {
  beacon_ie = p2p_group_build_beacon_ie(group);
  if (beacon_ie)
   group->beacon_update = 0;
  wpa_hexdump_buf(MSG_MSGDUMP, "P2P: Update GO Beacon P2P IE",
    beacon_ie);
 } else
  beacon_ie = ((void*)0);

 group->cfg->ie_update(group->cfg->cb_ctx, beacon_ie, probe_resp_ie);
}
