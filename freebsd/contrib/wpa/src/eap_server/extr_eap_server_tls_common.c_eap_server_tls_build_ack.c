
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int EAP_CODE_REQUEST ;
 int MSG_DEBUG ;
 struct wpabuf* eap_tls_msg_alloc (int,int,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

struct wpabuf * eap_server_tls_build_ack(u8 id, int eap_type, int version)
{
 struct wpabuf *req;

 req = eap_tls_msg_alloc(eap_type, 1, EAP_CODE_REQUEST, id);
 if (req == ((void*)0))
  return ((void*)0);
 wpa_printf(MSG_DEBUG, "SSL: Building ACK");
 wpabuf_put_u8(req, version);
 return req;
}
