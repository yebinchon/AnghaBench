
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_device {scalar_t__ go_state; int flags; int channels; } ;
struct p2p_data {int dev_capab; scalar_t__* vendor_elem; scalar_t__ wfd_ie_go_neg; int ssid_len; int ssid; TYPE_1__* cfg; int channels; int const op_channel; int const op_reg_class; scalar_t__ cross_connect; } ;
struct p2p_channels {int dummy; } ;
struct TYPE_2__ {char const* country; int dev_addr; scalar_t__ p2p_intra_bss; } ;


 scalar_t__ LOCAL_GO ;
 int P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY ;
 int P2P_DEV_PREFER_PERSISTENT_GROUP ;
 int P2P_DEV_PREFER_PERSISTENT_RECONN ;
 int P2P_GO_NEG_CONF ;
 int P2P_GROUP_CAPAB_CROSS_CONN ;
 int P2P_GROUP_CAPAB_INTRA_BSS_DIST ;
 int P2P_GROUP_CAPAB_PERSISTENT_GROUP ;
 int P2P_GROUP_CAPAB_PERSISTENT_RECONN ;
 size_t VENDOR_ELEM_P2P_GO_NEG_CONF ;
 int p2p_buf_add_capability (struct wpabuf*,int,int ) ;
 int p2p_buf_add_channel_list (struct wpabuf*,char const*,struct p2p_channels*) ;
 int p2p_buf_add_group_id (struct wpabuf*,int ,int ,int ) ;
 int * p2p_buf_add_ie_hdr (struct wpabuf*) ;
 int p2p_buf_add_operating_channel (struct wpabuf*,char const*,int const,int const) ;
 int p2p_buf_add_public_action_hdr (struct wpabuf*,int ,int ) ;
 int p2p_buf_add_status (struct wpabuf*,int ) ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,int *) ;
 int p2p_channels_intersect (int *,int *,struct p2p_channels*) ;
 int p2p_dbg (struct p2p_data*,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 size_t wpabuf_len (scalar_t__) ;
 int wpabuf_put_buf (struct wpabuf*,scalar_t__) ;

__attribute__((used)) static struct wpabuf * p2p_build_go_neg_conf(struct p2p_data *p2p,
          struct p2p_device *peer,
          u8 dialog_token, u8 status,
          const u8 *resp_chan, int go)
{
 struct wpabuf *buf;
 u8 *len;
 struct p2p_channels res;
 u8 group_capab;
 size_t extra = 0;

 p2p_dbg(p2p, "Building GO Negotiation Confirm");






 if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_CONF])
  extra += wpabuf_len(p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_CONF]);

 buf = wpabuf_alloc(1000 + extra);
 if (buf == ((void*)0))
  return ((void*)0);

 p2p_buf_add_public_action_hdr(buf, P2P_GO_NEG_CONF, dialog_token);

 len = p2p_buf_add_ie_hdr(buf);
 p2p_buf_add_status(buf, status);
 group_capab = 0;
 if (peer->go_state == LOCAL_GO) {
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
 if (go || resp_chan == ((void*)0))
  p2p_buf_add_operating_channel(buf, p2p->cfg->country,
           p2p->op_reg_class,
           p2p->op_channel);
 else
  p2p_buf_add_operating_channel(buf, (const char *) resp_chan,
           resp_chan[3], resp_chan[4]);
 p2p_channels_intersect(&p2p->channels, &peer->channels, &res);
 p2p_buf_add_channel_list(buf, p2p->cfg->country, &res);
 if (go) {
  p2p_buf_add_group_id(buf, p2p->cfg->dev_addr, p2p->ssid,
         p2p->ssid_len);
 }
 p2p_buf_update_ie_hdr(buf, len);






 if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_CONF])
  wpabuf_put_buf(buf, p2p->vendor_elem[VENDOR_ELEM_P2P_GO_NEG_CONF]);

 return buf;
}
