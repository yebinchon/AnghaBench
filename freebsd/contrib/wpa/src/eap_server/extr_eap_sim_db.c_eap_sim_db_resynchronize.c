
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sim_db_data {scalar_t__ sock; } ;
typedef int msg ;


 int EAP_AKA_AUTS_LEN ;
 char const EAP_AKA_PERMANENT_PREFIX ;
 char const EAP_AKA_PRIME_PERMANENT_PREFIX ;
 int EAP_AKA_RAND_LEN ;
 int MSG_DEBUG ;
 scalar_t__ eap_sim_db_send (struct eap_sim_db_data*,char*,int) ;
 int os_memcpy (char*,char const*,size_t) ;
 int os_snprintf (char*,int,char*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int os_strlen (char const*) ;
 int wpa_printf (int ,char*,char const*) ;
 scalar_t__ wpa_snprintf_hex (char*,int,int const*,int ) ;

int eap_sim_db_resynchronize(struct eap_sim_db_data *data,
        const char *username,
        const u8 *auts, const u8 *_rand)
{
 const char *imsi;
 size_t imsi_len;

 if (username == ((void*)0) ||
     (username[0] != EAP_AKA_PERMANENT_PREFIX &&
      username[0] != EAP_AKA_PRIME_PERMANENT_PREFIX) ||
     username[1] == '\0' || os_strlen(username) > 20) {
  wpa_printf(MSG_DEBUG, "EAP-SIM DB: unexpected username '%s'",
      username);
  return -1;
 }
 imsi = username + 1;
 wpa_printf(MSG_DEBUG, "EAP-SIM DB: Get AKA auth for IMSI '%s'",
     imsi);

 if (data->sock >= 0) {
  char msg[100];
  int len, ret;

  imsi_len = os_strlen(imsi);
  len = os_snprintf(msg, sizeof(msg), "AKA-AUTS ");
  if (os_snprintf_error(sizeof(msg), len) ||
      len + imsi_len >= sizeof(msg))
   return -1;
  os_memcpy(msg + len, imsi, imsi_len);
  len += imsi_len;

  ret = os_snprintf(msg + len, sizeof(msg) - len, " ");
  if (os_snprintf_error(sizeof(msg) - len, ret))
   return -1;
  len += ret;
  len += wpa_snprintf_hex(msg + len, sizeof(msg) - len,
     auts, EAP_AKA_AUTS_LEN);
  ret = os_snprintf(msg + len, sizeof(msg) - len, " ");
  if (os_snprintf_error(sizeof(msg) - len, ret))
   return -1;
  len += ret;
  len += wpa_snprintf_hex(msg + len, sizeof(msg) - len,
     _rand, EAP_AKA_RAND_LEN);
  wpa_printf(MSG_DEBUG, "EAP-SIM DB: reporting AKA AUTS for "
      "IMSI '%s'", imsi);
  if (eap_sim_db_send(data, msg, len) < 0)
   return -1;
 }

 return 0;
}
