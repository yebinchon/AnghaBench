
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_token {scalar_t__ type; char* string; } ;
struct dpp_signed_connector_info {int payload; int payload_len; } ;
struct dpp_curve_params {int dummy; } ;
struct dpp_authentication {int connector; int akm; } ;
typedef int info ;
typedef int EVP_PKEY ;


 scalar_t__ DPP_STATUS_OK ;
 int EVP_PKEY_free (int *) ;
 scalar_t__ JSON_OBJECT ;
 scalar_t__ JSON_STRING ;
 int MSG_DEBUG ;
 scalar_t__ dpp_akm_psk (int ) ;
 scalar_t__ dpp_akm_sae (int ) ;
 int dpp_copy_csign (struct dpp_authentication*,int *) ;
 int dpp_copy_netaccesskey (struct dpp_authentication*) ;
 int dpp_debug_print_key (char*,int *) ;
 scalar_t__ dpp_parse_connector (struct dpp_authentication*,int ,int ) ;
 scalar_t__ dpp_parse_cred_legacy (struct dpp_authentication*,struct json_token*) ;
 int * dpp_parse_jwk (struct json_token*,struct dpp_curve_params const**) ;
 scalar_t__ dpp_process_signed_connector (struct dpp_signed_connector_info*,int *,char const*) ;
 struct json_token* json_get_member (struct json_token*,char*) ;
 int os_free (int ) ;
 int os_memset (struct dpp_signed_connector_info*,int ,int) ;
 scalar_t__ os_strchr (char const*,char) ;
 int os_strdup (char const*) ;
 int os_strlen (char*) ;
 int wpa_hexdump_ascii (int ,char*,char*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int dpp_parse_cred_dpp(struct dpp_authentication *auth,
         struct json_token *cred)
{
 struct dpp_signed_connector_info info;
 struct json_token *token, *csign;
 int ret = -1;
 EVP_PKEY *csign_pub = ((void*)0);
 const struct dpp_curve_params *key_curve = ((void*)0);
 const char *signed_connector;

 os_memset(&info, 0, sizeof(info));

 if (dpp_akm_psk(auth->akm) || dpp_akm_sae(auth->akm)) {
  wpa_printf(MSG_DEBUG,
      "DPP: Legacy credential included in Connector credential");
  if (dpp_parse_cred_legacy(auth, cred) < 0)
   return -1;
 }

 wpa_printf(MSG_DEBUG, "DPP: Connector credential");

 csign = json_get_member(cred, "csign");
 if (!csign || csign->type != JSON_OBJECT) {
  wpa_printf(MSG_DEBUG, "DPP: No csign JWK in JSON");
  goto fail;
 }

 csign_pub = dpp_parse_jwk(csign, &key_curve);
 if (!csign_pub) {
  wpa_printf(MSG_DEBUG, "DPP: Failed to parse csign JWK");
  goto fail;
 }
 dpp_debug_print_key("DPP: Received C-sign-key", csign_pub);

 token = json_get_member(cred, "signedConnector");
 if (!token || token->type != JSON_STRING) {
  wpa_printf(MSG_DEBUG, "DPP: No signedConnector string found");
  goto fail;
 }
 wpa_hexdump_ascii(MSG_DEBUG, "DPP: signedConnector",
     token->string, os_strlen(token->string));
 signed_connector = token->string;

 if (os_strchr(signed_connector, '"') ||
     os_strchr(signed_connector, '\n')) {
  wpa_printf(MSG_DEBUG,
      "DPP: Unexpected character in signedConnector");
  goto fail;
 }

 if (dpp_process_signed_connector(&info, csign_pub,
      signed_connector) != DPP_STATUS_OK)
  goto fail;

 if (dpp_parse_connector(auth, info.payload, info.payload_len) < 0) {
  wpa_printf(MSG_DEBUG, "DPP: Failed to parse connector");
  goto fail;
 }

 os_free(auth->connector);
 auth->connector = os_strdup(signed_connector);

 dpp_copy_csign(auth, csign_pub);
 dpp_copy_netaccesskey(auth);

 ret = 0;
fail:
 EVP_PKEY_free(csign_pub);
 os_free(info.payload);
 return ret;
}
