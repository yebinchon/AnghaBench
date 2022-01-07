
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct json_token {scalar_t__ type; int string; struct json_token* sibling; struct json_token* child; } ;
struct dpp_curve_params {int dummy; } ;
struct dpp_authentication {scalar_t__ ignore_netaccesskey_mismatch; int own_protocol_key; int net_access_key_expiry; } ;
typedef int EVP_PKEY ;


 int EVP_PKEY_cmp (int *,int ) ;
 int EVP_PKEY_free (int *) ;
 scalar_t__ JSON_ARRAY ;
 scalar_t__ JSON_OBJECT ;
 scalar_t__ JSON_STRING ;
 int MSG_DEBUG ;
 int dpp_debug_print_key (char*,int *) ;
 scalar_t__ dpp_key_expired (int ,int *) ;
 int * dpp_parse_jwk (struct json_token*,struct dpp_curve_params const**) ;
 int json_free (struct json_token*) ;
 struct json_token* json_get_member (struct json_token*,char*) ;
 struct json_token* json_parse (char const*,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int dpp_parse_connector(struct dpp_authentication *auth,
          const unsigned char *payload,
          u16 payload_len)
{
 struct json_token *root, *groups, *netkey, *token;
 int ret = -1;
 EVP_PKEY *key = ((void*)0);
 const struct dpp_curve_params *curve;
 unsigned int rules = 0;

 root = json_parse((const char *) payload, payload_len);
 if (!root) {
  wpa_printf(MSG_DEBUG, "DPP: JSON parsing of connector failed");
  goto fail;
 }

 groups = json_get_member(root, "groups");
 if (!groups || groups->type != JSON_ARRAY) {
  wpa_printf(MSG_DEBUG, "DPP: No groups array found");
  goto skip_groups;
 }
 for (token = groups->child; token; token = token->sibling) {
  struct json_token *id, *role;

  id = json_get_member(token, "groupId");
  if (!id || id->type != JSON_STRING) {
   wpa_printf(MSG_DEBUG, "DPP: Missing groupId string");
   goto fail;
  }

  role = json_get_member(token, "netRole");
  if (!role || role->type != JSON_STRING) {
   wpa_printf(MSG_DEBUG, "DPP: Missing netRole string");
   goto fail;
  }
  wpa_printf(MSG_DEBUG,
      "DPP: connector group: groupId='%s' netRole='%s'",
      id->string, role->string);
  rules++;
 }
skip_groups:

 if (!rules) {
  wpa_printf(MSG_DEBUG,
      "DPP: Connector includes no groups");
  goto fail;
 }

 token = json_get_member(root, "expiry");
 if (!token || token->type != JSON_STRING) {
  wpa_printf(MSG_DEBUG,
      "DPP: No expiry string found - connector does not expire");
 } else {
  wpa_printf(MSG_DEBUG, "DPP: expiry = %s", token->string);
  if (dpp_key_expired(token->string,
        &auth->net_access_key_expiry)) {
   wpa_printf(MSG_DEBUG,
       "DPP: Connector (netAccessKey) has expired");
   goto fail;
  }
 }

 netkey = json_get_member(root, "netAccessKey");
 if (!netkey || netkey->type != JSON_OBJECT) {
  wpa_printf(MSG_DEBUG, "DPP: No netAccessKey object found");
  goto fail;
 }

 key = dpp_parse_jwk(netkey, &curve);
 if (!key)
  goto fail;
 dpp_debug_print_key("DPP: Received netAccessKey", key);

 if (EVP_PKEY_cmp(key, auth->own_protocol_key) != 1) {
  wpa_printf(MSG_DEBUG,
      "DPP: netAccessKey in connector does not match own protocol key");
  goto fail;

 }

 ret = 0;
fail:
 EVP_PKEY_free(key);
 json_free(root);
 return ret;
}
