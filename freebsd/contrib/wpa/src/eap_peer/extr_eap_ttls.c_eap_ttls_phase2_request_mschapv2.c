
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct wpabuf {int dummy; } ;
struct eap_ttls_data {int auth_response_valid; int master_key; int auth_response; int const ident; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int dummy; } ;


 int AVP_PAD (int const*,int const*) ;
 int EAP_TTLS_MSCHAPV2_CHALLENGE_LEN ;
 int EAP_TTLS_MSCHAPV2_RESPONSE_LEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int RADIUS_ATTR_MS_CHAP2_RESPONSE ;
 int RADIUS_ATTR_MS_CHAP_CHALLENGE ;
 int RADIUS_ATTR_USER_NAME ;
 int RADIUS_VENDOR_ID_MICROSOFT ;
 int const* eap_get_config_identity (struct eap_sm*,size_t*) ;
 int const* eap_get_config_password2 (struct eap_sm*,size_t*,int*) ;
 int const* eap_ttls_avp_add (int const*,int const*,int ,int ,int,int const*,int) ;
 int const* eap_ttls_avp_hdr (int const*,int ,int ,int,int ) ;
 int const* eap_ttls_implicit_challenge (struct eap_sm*,struct eap_ttls_data*,int) ;
 scalar_t__ mschapv2_derive_response (int const*,size_t,int const*,size_t,int,int const*,int const*,int const*,int ,int ) ;
 int os_free (int const*) ;
 scalar_t__ os_get_random (int const*,int) ;
 int os_memset (int const*,int ,int) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_clear_free (struct wpabuf*) ;
 int const* wpabuf_mhead (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static int eap_ttls_phase2_request_mschapv2(struct eap_sm *sm,
         struct eap_ttls_data *data,
         struct eap_method_ret *ret,
         struct wpabuf **resp)
{
 wpa_printf(MSG_ERROR, "EAP-TTLS: MSCHAPv2 not included in the build");
 return -1;


}
