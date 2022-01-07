
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_token {scalar_t__ type; int string; } ;
struct dpp_authentication {int psk_set; int * passphrase; int akm; int psk; } ;


 scalar_t__ JSON_STRING ;
 int MSG_DEBUG ;
 int PMK_LEN ;
 int dpp_akm_psk (int ) ;
 scalar_t__ dpp_akm_sae (int ) ;
 scalar_t__ hexstr2bin (int ,int ,int) ;
 struct json_token* json_get_member (struct json_token*,char*) ;
 int os_strlcpy (int *,int ,int) ;
 int os_strlen (int ) ;
 int wpa_hexdump_ascii_key (int ,char*,int ,size_t) ;
 int wpa_hexdump_key (int ,char*,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int dpp_parse_cred_legacy(struct dpp_authentication *auth,
     struct json_token *cred)
{
 struct json_token *pass, *psk_hex;

 wpa_printf(MSG_DEBUG, "DPP: Legacy akm=psk credential");

 pass = json_get_member(cred, "pass");
 psk_hex = json_get_member(cred, "psk_hex");

 if (pass && pass->type == JSON_STRING) {
  size_t len = os_strlen(pass->string);

  wpa_hexdump_ascii_key(MSG_DEBUG, "DPP: Legacy passphrase",
          pass->string, len);
  if (len < 8 || len > 63)
   return -1;
  os_strlcpy(auth->passphrase, pass->string,
      sizeof(auth->passphrase));
 } else if (psk_hex && psk_hex->type == JSON_STRING) {
  if (dpp_akm_sae(auth->akm) && !dpp_akm_psk(auth->akm)) {
   wpa_printf(MSG_DEBUG,
       "DPP: Unexpected psk_hex with akm=sae");
   return -1;
  }
  if (os_strlen(psk_hex->string) != PMK_LEN * 2 ||
      hexstr2bin(psk_hex->string, auth->psk, PMK_LEN) < 0) {
   wpa_printf(MSG_DEBUG, "DPP: Invalid psk_hex encoding");
   return -1;
  }
  wpa_hexdump_key(MSG_DEBUG, "DPP: Legacy PSK",
    auth->psk, PMK_LEN);
  auth->psk_set = 1;
 } else {
  wpa_printf(MSG_DEBUG, "DPP: No pass or psk_hex strings found");
  return -1;
 }

 if (dpp_akm_sae(auth->akm) && !auth->passphrase[0]) {
  wpa_printf(MSG_DEBUG, "DPP: No pass for sae found");
  return -1;
 }

 return 0;
}
