
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct json_token {scalar_t__ type; int string; } ;
struct dpp_curve_params {scalar_t__ prime_len; int name; } ;
typedef int EVP_PKEY ;
typedef int EC_GROUP ;


 int EC_GROUP_free (int *) ;
 int * EC_GROUP_new_by_curve_name (int ) ;
 scalar_t__ JSON_STRING ;
 int MSG_DEBUG ;
 int OBJ_txt2nid (int ) ;
 struct dpp_curve_params* dpp_get_curve_jwk_crv (int ) ;
 int * dpp_set_pubkey_point_group (int *,int ,int ,scalar_t__) ;
 struct json_token* json_get_member (struct json_token*,char*) ;
 struct wpabuf* json_get_member_base64url (struct json_token*,char*) ;
 scalar_t__ os_strcmp (int ,char*) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static EVP_PKEY * dpp_parse_jwk(struct json_token *jwk,
    const struct dpp_curve_params **key_curve)
{
 struct json_token *token;
 const struct dpp_curve_params *curve;
 struct wpabuf *x = ((void*)0), *y = ((void*)0);
 EC_GROUP *group;
 EVP_PKEY *pkey = ((void*)0);

 token = json_get_member(jwk, "kty");
 if (!token || token->type != JSON_STRING) {
  wpa_printf(MSG_DEBUG, "DPP: No kty in JWK");
  goto fail;
 }
 if (os_strcmp(token->string, "EC") != 0) {
  wpa_printf(MSG_DEBUG, "DPP: Unexpected JWK kty '%s'",
      token->string);
  goto fail;
 }

 token = json_get_member(jwk, "crv");
 if (!token || token->type != JSON_STRING) {
  wpa_printf(MSG_DEBUG, "DPP: No crv in JWK");
  goto fail;
 }
 curve = dpp_get_curve_jwk_crv(token->string);
 if (!curve) {
  wpa_printf(MSG_DEBUG, "DPP: Unsupported JWK crv '%s'",
      token->string);
  goto fail;
 }

 x = json_get_member_base64url(jwk, "x");
 if (!x) {
  wpa_printf(MSG_DEBUG, "DPP: No x in JWK");
  goto fail;
 }
 wpa_hexdump_buf(MSG_DEBUG, "DPP: JWK x", x);
 if (wpabuf_len(x) != curve->prime_len) {
  wpa_printf(MSG_DEBUG,
      "DPP: Unexpected JWK x length %u (expected %u for curve %s)",
      (unsigned int) wpabuf_len(x),
      (unsigned int) curve->prime_len, curve->name);
  goto fail;
 }

 y = json_get_member_base64url(jwk, "y");
 if (!y) {
  wpa_printf(MSG_DEBUG, "DPP: No y in JWK");
  goto fail;
 }
 wpa_hexdump_buf(MSG_DEBUG, "DPP: JWK y", y);
 if (wpabuf_len(y) != curve->prime_len) {
  wpa_printf(MSG_DEBUG,
      "DPP: Unexpected JWK y length %u (expected %u for curve %s)",
      (unsigned int) wpabuf_len(y),
      (unsigned int) curve->prime_len, curve->name);
  goto fail;
 }

 group = EC_GROUP_new_by_curve_name(OBJ_txt2nid(curve->name));
 if (!group) {
  wpa_printf(MSG_DEBUG, "DPP: Could not prepare group for JWK");
  goto fail;
 }

 pkey = dpp_set_pubkey_point_group(group, wpabuf_head(x), wpabuf_head(y),
       wpabuf_len(x));
 EC_GROUP_free(group);
 *key_curve = curve;

fail:
 wpabuf_free(x);
 wpabuf_free(y);

 return pkey;
}
