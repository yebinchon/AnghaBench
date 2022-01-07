
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int p2p_device_addr; } ;
struct p2p_device {int dialog_token; int oper_ssid_len; int oper_ssid; TYPE_1__ info; } ;
struct p2p_data {int dummy; } ;


 int P2P_DEV_DISC_REQ ;
 int p2p_buf_add_device_id (struct wpabuf*,int const*) ;
 int p2p_buf_add_group_id (struct wpabuf*,int ,int ,int ) ;
 int * p2p_buf_add_ie_hdr (struct wpabuf*) ;
 int p2p_buf_add_public_action_hdr (struct wpabuf*,int ,int) ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,int *) ;
 struct wpabuf* wpabuf_alloc (int) ;

__attribute__((used)) static struct wpabuf * p2p_build_dev_disc_req(struct p2p_data *p2p,
           struct p2p_device *go,
           const u8 *dev_id)
{
 struct wpabuf *buf;
 u8 *len;

 buf = wpabuf_alloc(100);
 if (buf == ((void*)0))
  return ((void*)0);

 go->dialog_token++;
 if (go->dialog_token == 0)
  go->dialog_token = 1;
 p2p_buf_add_public_action_hdr(buf, P2P_DEV_DISC_REQ, go->dialog_token);

 len = p2p_buf_add_ie_hdr(buf);
 p2p_buf_add_device_id(buf, dev_id);
 p2p_buf_add_group_id(buf, go->info.p2p_device_addr, go->oper_ssid,
        go->oper_ssid_len);
 p2p_buf_update_ie_hdr(buf, len);

 return buf;
}
