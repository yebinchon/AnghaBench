
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int eap_method_priv; TYPE_1__* m; } ;
struct eap_peer_config {size_t anonymous_identity_len; size_t identity_len; int * identity; scalar_t__ pcsc; int * anonymous_identity; } ;
struct TYPE_2__ {int * (* get_identity ) (struct eap_sm*,int ,size_t*) ;} ;


 int EAP_CODE_RESPONSE ;
 int EAP_TYPE_IDENTITY ;
 int EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,int) ;
 scalar_t__ eap_sm_get_scard_identity (struct eap_sm*,struct eap_peer_config*) ;
 int eap_sm_request_identity (struct eap_sm*) ;
 scalar_t__ eap_sm_set_scard_pin (struct eap_sm*,struct eap_peer_config*) ;
 int * stub1 (struct eap_sm*,int ,size_t*) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;

struct wpabuf * eap_sm_buildIdentity(struct eap_sm *sm, int id, int encrypted)
{
 struct eap_peer_config *config = eap_get_config(sm);
 struct wpabuf *resp;
 const u8 *identity;
 size_t identity_len;

 if (config == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAP: buildIdentity: configuration "
      "was not available");
  return ((void*)0);
 }

 if (sm->m && sm->m->get_identity &&
     (identity = sm->m->get_identity(sm, sm->eap_method_priv,
         &identity_len)) != ((void*)0)) {
  wpa_hexdump_ascii(MSG_DEBUG, "EAP: using method re-auth "
      "identity", identity, identity_len);
 } else if (!encrypted && config->anonymous_identity) {
  identity = config->anonymous_identity;
  identity_len = config->anonymous_identity_len;
  wpa_hexdump_ascii(MSG_DEBUG, "EAP: using anonymous identity",
      identity, identity_len);
 } else {
  identity = config->identity;
  identity_len = config->identity_len;
  wpa_hexdump_ascii(MSG_DEBUG, "EAP: using real identity",
      identity, identity_len);
 }

 if (config->pcsc) {
  return ((void*)0);

 } else if (!identity) {
  wpa_printf(MSG_WARNING,
   "EAP: buildIdentity: identity configuration was not available");
  eap_sm_request_identity(sm);
  return ((void*)0);
 }

 resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_IDENTITY, identity_len,
        EAP_CODE_RESPONSE, id);
 if (resp == ((void*)0))
  return ((void*)0);

 wpabuf_put_data(resp, identity, identity_len);

 return resp;
}
