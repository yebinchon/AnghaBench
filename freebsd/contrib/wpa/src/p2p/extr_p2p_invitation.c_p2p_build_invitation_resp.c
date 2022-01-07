
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_group {int dummy; } ;
struct p2p_device {int dummy; } ;
struct p2p_data {size_t num_groups; struct wpabuf** vendor_elem; TYPE_1__* cfg; struct p2p_group** groups; struct wpabuf* wfd_ie_invitation; } ;
struct p2p_channels {int dummy; } ;
struct TYPE_2__ {int country; } ;


 int ETH_ALEN ;
 int P2P_INVITATION_RESP ;
 size_t VENDOR_ELEM_P2P_INV_RESP ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;
 int p2p_buf_add_channel_list (struct wpabuf*,int ,struct p2p_channels*) ;
 int p2p_buf_add_config_timeout (struct wpabuf*,int ,int ) ;
 int p2p_buf_add_group_bssid (struct wpabuf*,int const*) ;
 int * p2p_buf_add_ie_hdr (struct wpabuf*) ;
 int p2p_buf_add_operating_channel (struct wpabuf*,int ,int ,int ) ;
 int p2p_buf_add_public_action_hdr (struct wpabuf*,int ,int ) ;
 int p2p_buf_add_status (struct wpabuf*,int ) ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,int *) ;
 int p2p_group_get_interface_addr (struct p2p_group*) ;
 struct wpabuf* p2p_group_get_wfd_ie (struct p2p_group*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * p2p_build_invitation_resp(struct p2p_data *p2p,
       struct p2p_device *peer,
       u8 dialog_token, u8 status,
       const u8 *group_bssid,
       u8 reg_class, u8 channel,
       struct p2p_channels *channels)
{
 struct wpabuf *buf;
 u8 *len;
 size_t extra = 0;
 if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_INV_RESP])
  extra += wpabuf_len(p2p->vendor_elem[VENDOR_ELEM_P2P_INV_RESP]);

 buf = wpabuf_alloc(1000 + extra);
 if (buf == ((void*)0))
  return ((void*)0);

 p2p_buf_add_public_action_hdr(buf, P2P_INVITATION_RESP,
          dialog_token);

 len = p2p_buf_add_ie_hdr(buf);
 p2p_buf_add_status(buf, status);
 p2p_buf_add_config_timeout(buf, 0, 0);
 if (reg_class && channel)
  p2p_buf_add_operating_channel(buf, p2p->cfg->country,
           reg_class, channel);
 if (group_bssid)
  p2p_buf_add_group_bssid(buf, group_bssid);
 if (channels)
  p2p_buf_add_channel_list(buf, p2p->cfg->country, channels);
 p2p_buf_update_ie_hdr(buf, len);






 if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_INV_RESP])
  wpabuf_put_buf(buf, p2p->vendor_elem[VENDOR_ELEM_P2P_INV_RESP]);

 return buf;
}
