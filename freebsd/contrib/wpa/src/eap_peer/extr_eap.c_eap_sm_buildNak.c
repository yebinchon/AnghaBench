
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {scalar_t__ reqMethod; int reqVendorMethod; int reqVendor; } ;
struct eap_method {scalar_t__ vendor; scalar_t__ method; struct eap_method* next; } ;
struct eap_hdr {int dummy; } ;


 int EAP_CODE_RESPONSE ;
 scalar_t__ EAP_TYPE_EXPANDED ;
 int EAP_TYPE_NAK ;
 scalar_t__ EAP_TYPE_NONE ;
 scalar_t__ EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 scalar_t__ eap_allowed_method (struct eap_sm*,scalar_t__,scalar_t__) ;
 struct wpabuf* eap_msg_alloc (scalar_t__,int ,int,int ,int) ;
 struct eap_method* eap_peer_get_methods (size_t*) ;
 struct wpabuf* eap_sm_build_expanded_nak (struct eap_sm*,int,struct eap_method const*,size_t) ;
 int eap_update_len (struct wpabuf*) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,scalar_t__,int ,int ) ;
 int * wpabuf_put (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,scalar_t__) ;

__attribute__((used)) static struct wpabuf * eap_sm_buildNak(struct eap_sm *sm, int id)
{
 struct wpabuf *resp;
 u8 *start;
 int found = 0, expanded_found = 0;
 size_t count;
 const struct eap_method *methods, *m;

 wpa_printf(MSG_DEBUG, "EAP: Building EAP-Nak (requested type %u "
     "vendor=%u method=%u not allowed)", sm->reqMethod,
     sm->reqVendor, sm->reqVendorMethod);
 methods = eap_peer_get_methods(&count);
 if (methods == ((void*)0))
  return ((void*)0);
 if (sm->reqMethod == EAP_TYPE_EXPANDED)
  return eap_sm_build_expanded_nak(sm, id, methods, count);


 resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_NAK,
        sizeof(struct eap_hdr) + 1 + count + 1,
        EAP_CODE_RESPONSE, id);
 if (resp == ((void*)0))
  return ((void*)0);

 start = wpabuf_put(resp, 0);
 for (m = methods; m; m = m->next) {
  if (m->vendor == EAP_VENDOR_IETF && m->method == sm->reqMethod)
   continue;
  if (eap_allowed_method(sm, m->vendor, m->method)) {
   if (m->vendor != EAP_VENDOR_IETF) {
    if (expanded_found)
     continue;
    expanded_found = 1;
    wpabuf_put_u8(resp, EAP_TYPE_EXPANDED);
   } else
    wpabuf_put_u8(resp, m->method);
   found++;
  }
 }
 if (!found)
  wpabuf_put_u8(resp, EAP_TYPE_NONE);
 wpa_hexdump(MSG_DEBUG, "EAP: allowed methods", start, found);

 eap_update_len(resp);

 return resp;
}
