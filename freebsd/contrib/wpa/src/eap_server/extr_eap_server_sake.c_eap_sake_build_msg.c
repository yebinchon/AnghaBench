
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sake_hdr {int subtype; int session_id; int version; } ;
struct eap_sake_data {int session_id; } ;


 int EAP_CODE_REQUEST ;
 int EAP_SAKE_VERSION ;
 int EAP_TYPE_SAKE ;
 int EAP_VENDOR_IETF ;
 int MSG_ERROR ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,int ) ;
 int wpa_printf (int ,char*) ;
 struct eap_sake_hdr* wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_sake_build_msg(struct eap_sake_data *data,
       u8 id, size_t length, u8 subtype)
{
 struct eap_sake_hdr *sake;
 struct wpabuf *msg;
 size_t plen;

 plen = sizeof(struct eap_sake_hdr) + length;

 msg = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_SAKE, plen,
       EAP_CODE_REQUEST, id);
 if (msg == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-SAKE: Failed to allocate memory "
      "request");
  return ((void*)0);
 }

 sake = wpabuf_put(msg, sizeof(*sake));
 sake->version = EAP_SAKE_VERSION;
 sake->session_id = data->session_id;
 sake->subtype = subtype;

 return msg;
}
