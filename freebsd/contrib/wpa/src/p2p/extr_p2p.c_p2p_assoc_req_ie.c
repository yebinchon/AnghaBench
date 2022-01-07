
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_device {int dummy; } ;
struct p2p_data {int ext_listen_interval; int ext_listen_period; int dev_capab; struct wpabuf** vendor_elem; struct wpabuf* wfd_ie_assoc_req; } ;


 size_t VENDOR_ELEM_P2P_ASSOC_REQ ;
 int os_memcpy (int *,int ,size_t) ;
 int p2p_assoc_req_ie_wlan_ap (struct p2p_data*,int const*,int *,size_t,struct wpabuf*) ;
 int p2p_buf_add_capability (struct wpabuf*,int ,int ) ;
 int p2p_buf_add_device_info (struct wpabuf*,struct p2p_data*,struct p2p_device*) ;
 int p2p_buf_add_ext_listen_timing (struct wpabuf*,int ,int ) ;
 int * p2p_buf_add_ie_hdr (struct wpabuf*) ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,int *) ;
 struct p2p_device* p2p_get_device (struct p2p_data*,int const*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;

int p2p_assoc_req_ie(struct p2p_data *p2p, const u8 *bssid, u8 *buf,
       size_t len, int p2p_group, struct wpabuf *p2p_ie)
{
 struct wpabuf *tmp;
 u8 *lpos;
 struct p2p_device *peer;
 size_t tmplen;
 int res;
 size_t extra = 0;

 if (!p2p_group)
  return p2p_assoc_req_ie_wlan_ap(p2p, bssid, buf, len, p2p_ie);






 if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_REQ])
  extra += wpabuf_len(p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_REQ]);







 tmp = wpabuf_alloc(200 + extra);
 if (tmp == ((void*)0))
  return -1;






 if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_REQ])
  wpabuf_put_buf(tmp,
          p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_REQ]);

 peer = bssid ? p2p_get_device(p2p, bssid) : ((void*)0);

 lpos = p2p_buf_add_ie_hdr(tmp);
 p2p_buf_add_capability(tmp, p2p->dev_capab, 0);
 if (p2p->ext_listen_interval)
  p2p_buf_add_ext_listen_timing(tmp, p2p->ext_listen_period,
           p2p->ext_listen_interval);
 p2p_buf_add_device_info(tmp, p2p, peer);
 p2p_buf_update_ie_hdr(tmp, lpos);

 tmplen = wpabuf_len(tmp);
 if (tmplen > len)
  res = -1;
 else {
  os_memcpy(buf, wpabuf_head(tmp), tmplen);
  res = tmplen;
 }
 wpabuf_free(tmp);

 return res;
}
