
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sim_msg {int mac; struct wpabuf* buf; } ;
struct eap_hdr {int length; } ;


 int EAP_TYPE_AKA_PRIME ;
 int eap_sim_add_mac (int const*,int *,int ,int *,int const*,size_t) ;
 int eap_sim_add_mac_sha256 (int const*,int *,int ,int *,int const*,size_t) ;
 int host_to_be16 (int ) ;
 int os_free (struct eap_sim_msg*) ;
 scalar_t__ wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 struct eap_hdr* wpabuf_mhead (struct wpabuf*) ;

struct wpabuf * eap_sim_msg_finish(struct eap_sim_msg *msg, int type,
       const u8 *k_aut,
       const u8 *extra, size_t extra_len)
{
 struct eap_hdr *eap;
 struct wpabuf *buf;

 if (msg == ((void*)0))
  return ((void*)0);

 eap = wpabuf_mhead(msg->buf);
 eap->length = host_to_be16(wpabuf_len(msg->buf));
 if (k_aut && msg->mac) {
  eap_sim_add_mac(k_aut, (u8 *) wpabuf_head(msg->buf),
    wpabuf_len(msg->buf),
    (u8 *) wpabuf_mhead(msg->buf) + msg->mac,
    extra, extra_len);
 }

 buf = msg->buf;
 os_free(msg);
 return buf;
}
