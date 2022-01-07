
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct wpabuf {int dummy; } ;
struct p2p_device {scalar_t__ go_state; int flags; scalar_t__ oob_pw_id; int wps_method; int channels; } ;
struct p2p_channels {int dummy; } ;
struct p2p_data {int dev_capab; int go_intent; scalar_t__* vendor_elem; scalar_t__ wfd_ie_go_neg; int ssid_len; int ssid; TYPE_1__* cfg; struct p2p_channels channels; int intended_addr; int op_channel; int op_reg_class; int num_pref_freq; int override_pref_channel; int override_pref_op_class; int client_timeout; int go_timeout; scalar_t__ cross_connect; } ;
struct TYPE_2__ {int dev_addr; int country; scalar_t__ p2p_intra_bss; } ;


 scalar_t__ LOCAL_GO ;
 int P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY ;
 int P2P_DEV_PREFER_PERSISTENT_GROUP ;
 int P2P_DEV_PREFER_PERSISTENT_RECONN ;
 int P2P_GO_NEG_RESP ;
 int P2P_GROUP_CAPAB_CROSS_CONN ;
 int P2P_GROUP_CAPAB_INTRA_BSS_DIST ;
 int P2P_GROUP_CAPAB_PERSISTENT_GROUP ;
 int P2P_GROUP_CAPAB_PERSISTENT_RECONN ;
 scalar_t__ REMOTE_GO ;
 size_t VENDOR_ELEM_P2P_GO_NEG_RESP ;
 int WPS_NOT_READY ;
 int p2p_buf_add_capability (struct wpabuf*,int,int) ;
 int p2p_buf_add_channel_list (struct wpabuf*,int ,struct p2p_channels*) ;
 int p2p_buf_add_config_timeout (struct wpabuf*,int ,int ) ;
 int p2p_buf_add_device_info (struct wpabuf*,struct p2p_data*,struct p2p_device*) ;
 int p2p_buf_add_go_intent (struct wpabuf*,int) ;
 int p2p_buf_add_group_id (struct wpabuf*,int ,int ,int ) ;
 int* p2p_buf_add_ie_hdr (struct wpabuf*) ;
 int p2p_buf_add_intended_addr (struct wpabuf*,int ) ;
 int p2p_buf_add_operating_channel (struct wpabuf*,int ,int ,int ) ;
 int p2p_buf_add_public_action_hdr (struct wpabuf*,int ,int) ;
 int p2p_buf_add_status (struct wpabuf*,int) ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,int*) ;
 scalar_t__ p2p_build_wps_ie (struct p2p_data*,struct wpabuf*,scalar_t__,int ) ;
 int p2p_channels_intersect (struct p2p_channels*,int *,struct p2p_channels*) ;
 int p2p_dbg (struct p2p_data*,char*) ;
 scalar_t__ p2p_wps_method_pw_id (int ) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 size_t wpabuf_len (scalar_t__) ;
 int wpabuf_put_buf (struct wpabuf*,scalar_t__) ;

__attribute__((used)) static struct wpabuf * p2p_build_go_neg_resp(struct p2p_data *p2p,
          struct p2p_device *peer,
          u8 dialog_token, u8 status,
          u8 tie_breaker)
{
 struct wpabuf *buf;
 u8 *len;
 u8 group_capab;
 size_t extra = 0;
 u16 pw_id;

 p2p_dbg(p2p, "Building GO Negotiation Response");






 if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_RESP])
  extra += wpabuf_len(p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_RESP]);

 buf = wpabuf_alloc(1000 + extra);
 if (buf == ((void*)0))
  return ((void*)0);

 p2p_buf_add_public_action_hdr(buf, P2P_GO_NEG_RESP, dialog_token);

 len = p2p_buf_add_ie_hdr(buf);
 p2p_buf_add_status(buf, status);
 group_capab = 0;
 if (peer && peer->go_state == LOCAL_GO) {
  if (peer->flags & P2P_DEV_PREFER_PERSISTENT_GROUP) {
   group_capab |= P2P_GROUP_CAPAB_PERSISTENT_GROUP;
   if (peer->flags & P2P_DEV_PREFER_PERSISTENT_RECONN)
    group_capab |=
     P2P_GROUP_CAPAB_PERSISTENT_RECONN;
  }
  if (p2p->cross_connect)
   group_capab |= P2P_GROUP_CAPAB_CROSS_CONN;
  if (p2p->cfg->p2p_intra_bss)
   group_capab |= P2P_GROUP_CAPAB_INTRA_BSS_DIST;
 }
 p2p_buf_add_capability(buf, p2p->dev_capab &
          ~P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY,
          group_capab);
 p2p_buf_add_go_intent(buf, (p2p->go_intent << 1) | tie_breaker);
 p2p_buf_add_config_timeout(buf, p2p->go_timeout, p2p->client_timeout);
 if (p2p->override_pref_op_class) {
  p2p_dbg(p2p, "Override operating channel preference");
  p2p_buf_add_operating_channel(buf, p2p->cfg->country,
           p2p->override_pref_op_class,
           p2p->override_pref_channel);
 } else if (peer && peer->go_state == REMOTE_GO && !p2p->num_pref_freq) {
  p2p_dbg(p2p, "Omit Operating Channel attribute");
 } else {
  p2p_buf_add_operating_channel(buf, p2p->cfg->country,
           p2p->op_reg_class,
           p2p->op_channel);
 }
 p2p_buf_add_intended_addr(buf, p2p->intended_addr);
 if (status || peer == ((void*)0)) {
  p2p_buf_add_channel_list(buf, p2p->cfg->country,
      &p2p->channels);
 } else if (peer->go_state == REMOTE_GO) {
  p2p_buf_add_channel_list(buf, p2p->cfg->country,
      &p2p->channels);
 } else {
  struct p2p_channels res;
  p2p_channels_intersect(&p2p->channels, &peer->channels,
           &res);
  p2p_buf_add_channel_list(buf, p2p->cfg->country, &res);
 }
 p2p_buf_add_device_info(buf, p2p, peer);
 if (peer && peer->go_state == LOCAL_GO) {
  p2p_buf_add_group_id(buf, p2p->cfg->dev_addr, p2p->ssid,
         p2p->ssid_len);
 }
 p2p_buf_update_ie_hdr(buf, len);


 pw_id = p2p_wps_method_pw_id(peer ? peer->wps_method : WPS_NOT_READY);
 if (peer && peer->oob_pw_id)
  pw_id = peer->oob_pw_id;
 if (p2p_build_wps_ie(p2p, buf, pw_id, 0) < 0) {
  p2p_dbg(p2p, "Failed to build WPS IE for GO Negotiation Response");
  wpabuf_free(buf);
  return ((void*)0);
 }






 if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_RESP])
  wpabuf_put_buf(buf, p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_RESP]);

 return buf;
}
