
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_sim_data {size_t num_chal; int * sres; int * kc; int * rand; } ;
struct eap_peer_config {char* external_sim_resp; } ;


 int EAP_SIM_KC_LEN ;
 int EAP_SIM_SRES_LEN ;
 int GSM_RAND_LEN ;
 int MSG_DEBUG ;
 scalar_t__ hexstr2bin (char*,int ,int) ;
 int os_free (char*) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_hexdump_key (int ,char*,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_sim_ext_sim_result(struct eap_sm *sm, struct eap_sim_data *data,
      struct eap_peer_config *conf)
{
 char *resp, *pos;
 size_t i;

 wpa_printf(MSG_DEBUG,
     "EAP-SIM: Use result from external SIM processing");

 resp = conf->external_sim_resp;
 conf->external_sim_resp = ((void*)0);

 if (os_strncmp(resp, "GSM-AUTH:", 9) != 0) {
  wpa_printf(MSG_DEBUG, "EAP-SIM: Unrecognized external SIM processing response");
  os_free(resp);
  return -1;
 }

 pos = resp + 9;
 for (i = 0; i < data->num_chal; i++) {
  wpa_hexdump(MSG_DEBUG, "EAP-SIM: RAND",
       data->rand[i], GSM_RAND_LEN);

  if (hexstr2bin(pos, data->kc[i], EAP_SIM_KC_LEN) < 0)
   goto invalid;
  wpa_hexdump_key(MSG_DEBUG, "EAP-SIM: Kc",
    data->kc[i], EAP_SIM_KC_LEN);
  pos += EAP_SIM_KC_LEN * 2;
  if (*pos != ':')
   goto invalid;
  pos++;

  if (hexstr2bin(pos, data->sres[i], EAP_SIM_SRES_LEN) < 0)
   goto invalid;
  wpa_hexdump_key(MSG_DEBUG, "EAP-SIM: SRES",
    data->sres[i], EAP_SIM_SRES_LEN);
  pos += EAP_SIM_SRES_LEN * 2;
  if (i + 1 < data->num_chal) {
   if (*pos != ':')
    goto invalid;
   pos++;
  }
 }

 os_free(resp);
 return 0;

invalid:
 wpa_printf(MSG_DEBUG, "EAP-SIM: Invalid external SIM processing GSM-AUTH response");
 os_free(resp);
 return -1;
}
