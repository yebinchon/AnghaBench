
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
typedef scalar_t__ EapType ;


 int EAP_CODE_RESPONSE ;
 int MSG_DEBUG ;
 struct wpabuf* eap_tls_msg_alloc (scalar_t__,int,int ,int ) ;
 int wpa_printf (int ,char*,int,int ,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

struct wpabuf * eap_peer_tls_build_ack(u8 id, EapType eap_type,
           int peap_version)
{
 struct wpabuf *resp;

 resp = eap_tls_msg_alloc(eap_type, 1, EAP_CODE_RESPONSE, id);
 if (resp == ((void*)0))
  return ((void*)0);
 wpa_printf(MSG_DEBUG, "SSL: Building ACK (type=%d id=%d ver=%d)",
     (int) eap_type, id, peap_version);
 wpabuf_put_u8(resp, peap_version);
 return resp;
}
