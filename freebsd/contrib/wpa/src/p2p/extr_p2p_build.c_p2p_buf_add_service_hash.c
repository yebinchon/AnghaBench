
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct p2p_data {int p2ps_seek_count; int p2ps_seek_hash; } ;


 int MSG_DEBUG ;
 int P2PS_HASH_LEN ;
 int P2P_ATTR_SERVICE_HASH ;
 int wpa_hexdump (int ,char*,int ,int) ;
 int wpabuf_put_data (struct wpabuf*,int ,int) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

void p2p_buf_add_service_hash(struct wpabuf *buf, struct p2p_data *p2p)
{
 if (!p2p)
  return;


 wpabuf_put_u8(buf, P2P_ATTR_SERVICE_HASH);
 wpabuf_put_le16(buf, p2p->p2ps_seek_count * P2PS_HASH_LEN);
 wpabuf_put_data(buf, p2p->p2ps_seek_hash,
   p2p->p2ps_seek_count * P2PS_HASH_LEN);
 wpa_hexdump(MSG_DEBUG, "P2P: * Service Hash",
      p2p->p2ps_seek_hash, p2p->p2ps_seek_count * P2PS_HASH_LEN);
}
