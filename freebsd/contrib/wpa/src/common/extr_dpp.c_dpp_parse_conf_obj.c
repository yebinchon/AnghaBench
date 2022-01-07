
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct json_token {scalar_t__ type; int string; } ;
struct dpp_authentication {int akm; scalar_t__ ssid_len; int ssid; } ;


 scalar_t__ JSON_OBJECT ;
 scalar_t__ JSON_STRING ;
 int MSG_DEBUG ;
 scalar_t__ SSID_MAX_LEN ;
 scalar_t__ dpp_akm_dpp (int ) ;
 int dpp_akm_from_str (int ) ;
 scalar_t__ dpp_akm_legacy (int ) ;
 int dpp_auth_fail (struct dpp_authentication*,char*) ;
 scalar_t__ dpp_parse_cred_dpp (struct dpp_authentication*,struct json_token*) ;
 scalar_t__ dpp_parse_cred_legacy (struct dpp_authentication*,struct json_token*) ;
 int json_free (struct json_token*) ;
 struct json_token* json_get_member (struct json_token*,char*) ;
 struct json_token* json_parse (char const*,int ) ;
 int os_memcpy (int ,int ,scalar_t__) ;
 scalar_t__ os_strcmp (int ,char*) ;
 scalar_t__ os_strlen (int ) ;
 int wpa_hexdump_ascii (int ,char*,int ,scalar_t__) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int dpp_parse_conf_obj(struct dpp_authentication *auth,
         const u8 *conf_obj, u16 conf_obj_len)
{
 int ret = -1;
 struct json_token *root, *token, *discovery, *cred;

 root = json_parse((const char *) conf_obj, conf_obj_len);
 if (!root)
  return -1;
 if (root->type != JSON_OBJECT) {
  dpp_auth_fail(auth, "JSON root is not an object");
  goto fail;
 }

 token = json_get_member(root, "wi-fi_tech");
 if (!token || token->type != JSON_STRING) {
  dpp_auth_fail(auth, "No wi-fi_tech string value found");
  goto fail;
 }
 if (os_strcmp(token->string, "infra") != 0) {
  wpa_printf(MSG_DEBUG, "DPP: Unsupported wi-fi_tech value: '%s'",
      token->string);
  dpp_auth_fail(auth, "Unsupported wi-fi_tech value");
  goto fail;
 }

 discovery = json_get_member(root, "discovery");
 if (!discovery || discovery->type != JSON_OBJECT) {
  dpp_auth_fail(auth, "No discovery object in JSON");
  goto fail;
 }

 token = json_get_member(discovery, "ssid");
 if (!token || token->type != JSON_STRING) {
  dpp_auth_fail(auth, "No discovery::ssid string value found");
  goto fail;
 }
 wpa_hexdump_ascii(MSG_DEBUG, "DPP: discovery::ssid",
     token->string, os_strlen(token->string));
 if (os_strlen(token->string) > SSID_MAX_LEN) {
  dpp_auth_fail(auth, "Too long discovery::ssid string value");
  goto fail;
 }
 auth->ssid_len = os_strlen(token->string);
 os_memcpy(auth->ssid, token->string, auth->ssid_len);

 cred = json_get_member(root, "cred");
 if (!cred || cred->type != JSON_OBJECT) {
  dpp_auth_fail(auth, "No cred object in JSON");
  goto fail;
 }

 token = json_get_member(cred, "akm");
 if (!token || token->type != JSON_STRING) {
  dpp_auth_fail(auth, "No cred::akm string value found");
  goto fail;
 }
 auth->akm = dpp_akm_from_str(token->string);

 if (dpp_akm_legacy(auth->akm)) {
  if (dpp_parse_cred_legacy(auth, cred) < 0)
   goto fail;
 } else if (dpp_akm_dpp(auth->akm)) {
  if (dpp_parse_cred_dpp(auth, cred) < 0)
   goto fail;
 } else {
  wpa_printf(MSG_DEBUG, "DPP: Unsupported akm: %s",
      token->string);
  dpp_auth_fail(auth, "Unsupported akm");
  goto fail;
 }

 wpa_printf(MSG_DEBUG, "DPP: JSON parsing completed successfully");
 ret = 0;
fail:
 json_free(root);
 return ret;
}
