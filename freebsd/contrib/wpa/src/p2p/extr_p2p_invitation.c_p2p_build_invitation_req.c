
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_group {int dummy; } ;
struct TYPE_3__ {int * p2p_device_addr; } ;
struct p2p_device {int dialog_token; int flags; TYPE_1__ info; } ;
struct p2p_data {scalar_t__ inv_role; size_t num_groups; struct wpabuf** vendor_elem; int num_pref_freq; int pref_freq_list; int inv_ssid_len; int inv_ssid; TYPE_2__* cfg; int channels; int inv_bssid; scalar_t__ inv_bssid_set; int op_channel; int op_reg_class; scalar_t__ inv_persistent; int client_timeout; int go_timeout; struct p2p_group** groups; struct wpabuf* wfd_ie_invitation; } ;
struct TYPE_4__ {int * dev_addr; int country; } ;


 int ETH_ALEN ;
 int P2P_DEV_NO_PREF_CHAN ;
 int P2P_INVITATION_FLAGS_TYPE ;
 int P2P_INVITATION_REQ ;
 scalar_t__ P2P_INVITE_ROLE_ACTIVE_GO ;
 scalar_t__ P2P_INVITE_ROLE_CLIENT ;
 size_t VENDOR_ELEM_P2P_INV_REQ ;
 scalar_t__ os_memcmp (int ,int ,int ) ;
 int p2p_buf_add_channel_list (struct wpabuf*,int ,int *) ;
 int p2p_buf_add_config_timeout (struct wpabuf*,int ,int ) ;
 int p2p_buf_add_device_info (struct wpabuf*,struct p2p_data*,struct p2p_device*) ;
 int p2p_buf_add_group_bssid (struct wpabuf*,int ) ;
 int p2p_buf_add_group_id (struct wpabuf*,int const*,int ,int ) ;
 int * p2p_buf_add_ie_hdr (struct wpabuf*) ;
 int p2p_buf_add_invitation_flags (struct wpabuf*,int ) ;
 int p2p_buf_add_operating_channel (struct wpabuf*,int ,int ,int ) ;
 int p2p_buf_add_pref_channel_list (struct wpabuf*,int ,int ) ;
 int p2p_buf_add_public_action_hdr (struct wpabuf*,int ,int) ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,int *) ;
 int p2p_build_wps_ie (struct p2p_data*,struct wpabuf*,int,int ) ;
 int p2p_group_get_interface_addr (struct p2p_group*) ;
 struct wpabuf* p2p_group_get_wfd_ie (struct p2p_group*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * p2p_build_invitation_req(struct p2p_data *p2p,
      struct p2p_device *peer,
      const u8 *go_dev_addr,
      int dev_pw_id)
{
 struct wpabuf *buf;
 u8 *len;
 const u8 *dev_addr;
 size_t extra = 0;
 if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_INV_REQ])
  extra += wpabuf_len(p2p->vendor_elem[VENDOR_ELEM_P2P_INV_REQ]);

 buf = wpabuf_alloc(1000 + extra);
 if (buf == ((void*)0))
  return ((void*)0);

 peer->dialog_token++;
 if (peer->dialog_token == 0)
  peer->dialog_token = 1;
 p2p_buf_add_public_action_hdr(buf, P2P_INVITATION_REQ,
          peer->dialog_token);

 len = p2p_buf_add_ie_hdr(buf);
 if (p2p->inv_role == P2P_INVITE_ROLE_ACTIVE_GO || !p2p->inv_persistent)
  p2p_buf_add_config_timeout(buf, 0, 0);
 else
  p2p_buf_add_config_timeout(buf, p2p->go_timeout,
        p2p->client_timeout);
 p2p_buf_add_invitation_flags(buf, p2p->inv_persistent ?
         P2P_INVITATION_FLAGS_TYPE : 0);
 if (p2p->inv_role != P2P_INVITE_ROLE_CLIENT ||
     !(peer->flags & P2P_DEV_NO_PREF_CHAN))
  p2p_buf_add_operating_channel(buf, p2p->cfg->country,
           p2p->op_reg_class,
           p2p->op_channel);
 if (p2p->inv_bssid_set)
  p2p_buf_add_group_bssid(buf, p2p->inv_bssid);
 p2p_buf_add_channel_list(buf, p2p->cfg->country, &p2p->channels);
 if (go_dev_addr)
  dev_addr = go_dev_addr;
 else if (p2p->inv_role == P2P_INVITE_ROLE_CLIENT)
  dev_addr = peer->info.p2p_device_addr;
 else
  dev_addr = p2p->cfg->dev_addr;
 p2p_buf_add_group_id(buf, dev_addr, p2p->inv_ssid, p2p->inv_ssid_len);
 p2p_buf_add_device_info(buf, p2p, peer);
 p2p_buf_update_ie_hdr(buf, len);

 p2p_buf_add_pref_channel_list(buf, p2p->pref_freq_list,
          p2p->num_pref_freq);






 if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_INV_REQ])
  wpabuf_put_buf(buf, p2p->vendor_elem[VENDOR_ELEM_P2P_INV_REQ]);

 if (dev_pw_id >= 0) {

  p2p_build_wps_ie(p2p, buf, dev_pw_id, 0);
 }

 return buf;
}
