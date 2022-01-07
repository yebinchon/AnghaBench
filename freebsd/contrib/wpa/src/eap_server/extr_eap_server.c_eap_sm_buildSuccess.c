
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_hdr {int length; int identifier; int code; } ;


 int EAP_CODE_SUCCESS ;
 int MSG_DEBUG ;
 int host_to_be16 (int) ;
 int wpa_printf (int ,char*,int ) ;
 struct wpabuf* wpabuf_alloc (int) ;
 struct eap_hdr* wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_sm_buildSuccess(struct eap_sm *sm, u8 id)
{
 struct wpabuf *msg;
 struct eap_hdr *resp;
 wpa_printf(MSG_DEBUG, "EAP: Building EAP-Success (id=%d)", id);

 msg = wpabuf_alloc(sizeof(*resp));
 if (msg == ((void*)0))
  return ((void*)0);
 resp = wpabuf_put(msg, sizeof(*resp));
 resp->code = EAP_CODE_SUCCESS;
 resp->identifier = id;
 resp->length = host_to_be16(sizeof(*resp));

 return msg;
}
