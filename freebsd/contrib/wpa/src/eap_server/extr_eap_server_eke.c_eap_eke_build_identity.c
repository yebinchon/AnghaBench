
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int server_id_len; int server_id; } ;
struct eap_eke_data {int serverid_type; struct wpabuf* msgs; } ;


 int EAP_EKE_DHGROUP_EKE_14 ;
 int EAP_EKE_DHGROUP_EKE_15 ;
 int EAP_EKE_DHGROUP_EKE_16 ;
 int EAP_EKE_ENCR_AES128_CBC ;
 int EAP_EKE_ID ;
 int EAP_EKE_MAC_HMAC_SHA1 ;
 int EAP_EKE_MAC_HMAC_SHA2_256 ;
 int EAP_EKE_PRF_HMAC_SHA1 ;
 int EAP_EKE_PRF_HMAC_SHA2_256 ;
 int MSG_DEBUG ;
 struct wpabuf* eap_eke_build_msg (struct eap_eke_data*,int ,size_t,int ) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_dup (struct wpabuf*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,int ,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_eke_build_identity(struct eap_sm *sm,
           struct eap_eke_data *data,
           u8 id)
{
 struct wpabuf *msg;
 size_t plen;

 wpa_printf(MSG_DEBUG, "EAP-EKE: Request/Identity");

 plen = 2 + 4 * 4 + 1 + sm->server_id_len;
 msg = eap_eke_build_msg(data, id, plen, EAP_EKE_ID);
 if (msg == ((void*)0))
  return ((void*)0);

 wpabuf_put_u8(msg, 4);
 wpabuf_put_u8(msg, 0);


 wpabuf_put_u8(msg, EAP_EKE_DHGROUP_EKE_16);
 wpabuf_put_u8(msg, EAP_EKE_ENCR_AES128_CBC);
 wpabuf_put_u8(msg, EAP_EKE_PRF_HMAC_SHA2_256);
 wpabuf_put_u8(msg, EAP_EKE_MAC_HMAC_SHA2_256);


 wpabuf_put_u8(msg, EAP_EKE_DHGROUP_EKE_15);
 wpabuf_put_u8(msg, EAP_EKE_ENCR_AES128_CBC);
 wpabuf_put_u8(msg, EAP_EKE_PRF_HMAC_SHA2_256);
 wpabuf_put_u8(msg, EAP_EKE_MAC_HMAC_SHA2_256);


 wpabuf_put_u8(msg, EAP_EKE_DHGROUP_EKE_14);
 wpabuf_put_u8(msg, EAP_EKE_ENCR_AES128_CBC);
 wpabuf_put_u8(msg, EAP_EKE_PRF_HMAC_SHA2_256);
 wpabuf_put_u8(msg, EAP_EKE_MAC_HMAC_SHA2_256);





 wpabuf_put_u8(msg, EAP_EKE_DHGROUP_EKE_14);
 wpabuf_put_u8(msg, EAP_EKE_ENCR_AES128_CBC);
 wpabuf_put_u8(msg, EAP_EKE_PRF_HMAC_SHA1);
 wpabuf_put_u8(msg, EAP_EKE_MAC_HMAC_SHA1);


 wpabuf_put_u8(msg, data->serverid_type);
 wpabuf_put_data(msg, sm->server_id, sm->server_id_len);

 wpabuf_free(data->msgs);
 data->msgs = wpabuf_dup(msg);
 if (data->msgs == ((void*)0)) {
  wpabuf_free(msg);
  return ((void*)0);
 }

 return msg;
}
