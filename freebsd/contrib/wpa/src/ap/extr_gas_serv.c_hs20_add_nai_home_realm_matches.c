
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct wpabuf {int dummy; } ;
struct hostapd_nai_realm_data {unsigned int encoding; int * realm; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {unsigned int nai_realm_count; struct hostapd_nai_realm_data* nai_realm_data; } ;


 int ANQP_NAI_REALM ;
 unsigned int MAX_NAI_REALMS ;
 int MSG_DEBUG ;
 int anqp_add_nai_realm_data (struct wpabuf*,struct hostapd_nai_realm_data*,unsigned int) ;
 unsigned int* gas_anqp_add_element (struct wpabuf*,int ) ;
 int gas_anqp_set_element_len (struct wpabuf*,unsigned int*) ;
 scalar_t__ os_strlen (int ) ;
 scalar_t__ os_strncmp (char*,int ,int) ;
 int wpa_hexdump (int ,char*,unsigned int const*,size_t) ;
 int wpa_printf (int ,char*,unsigned int,unsigned int) ;
 int wpabuf_put_le16 (struct wpabuf*,unsigned int) ;

__attribute__((used)) static int hs20_add_nai_home_realm_matches(struct hostapd_data *hapd,
        struct wpabuf *buf,
        const u8 *home_realm,
        size_t home_realm_len)
{
 unsigned int i, j, k;
 u8 num_realms, num_matching = 0, encoding, realm_len, *realm_list_len;
 struct hostapd_nai_realm_data *realm;
 const u8 *pos, *realm_name, *end;
 struct {
  unsigned int realm_data_idx;
  unsigned int realm_idx;
 } matches[10];

 pos = home_realm;
 end = pos + home_realm_len;
 if (end - pos < 1) {
  wpa_hexdump(MSG_DEBUG, "Too short NAI Home Realm Query",
       home_realm, home_realm_len);
  return -1;
 }
 num_realms = *pos++;

 for (i = 0; i < num_realms && num_matching < 10; i++) {
  if (end - pos < 2) {
   wpa_hexdump(MSG_DEBUG,
        "Truncated NAI Home Realm Query",
        home_realm, home_realm_len);
   return -1;
  }
  encoding = *pos++;
  realm_len = *pos++;
  if (realm_len > end - pos) {
   wpa_hexdump(MSG_DEBUG,
        "Truncated NAI Home Realm Query",
        home_realm, home_realm_len);
   return -1;
  }
  realm_name = pos;
  for (j = 0; j < hapd->conf->nai_realm_count &&
        num_matching < 10; j++) {
   const u8 *rpos, *rend;
   realm = &hapd->conf->nai_realm_data[j];
   if (encoding != realm->encoding)
    continue;

   rpos = realm_name;
   while (rpos < realm_name + realm_len &&
          num_matching < 10) {
    for (rend = rpos;
         rend < realm_name + realm_len; rend++) {
     if (*rend == ';')
      break;
    }
    for (k = 0; k < MAX_NAI_REALMS &&
          realm->realm[k] &&
          num_matching < 10; k++) {
     if ((int) os_strlen(realm->realm[k]) !=
         rend - rpos ||
         os_strncmp((char *) rpos,
             realm->realm[k],
             rend - rpos) != 0)
      continue;
     matches[num_matching].realm_data_idx =
      j;
     matches[num_matching].realm_idx = k;
     num_matching++;
    }
    rpos = rend + 1;
   }
  }
  pos += realm_len;
 }

 realm_list_len = gas_anqp_add_element(buf, ANQP_NAI_REALM);
 wpabuf_put_le16(buf, num_matching);







 for (i = 0; i < num_matching; i++) {
  wpa_printf(MSG_DEBUG, "realm_idx %d, realm_data_idx %d",
      matches[i].realm_data_idx, matches[i].realm_idx);
  realm = &hapd->conf->nai_realm_data[matches[i].realm_data_idx];
  anqp_add_nai_realm_data(buf, realm, matches[i].realm_idx);
 }
 gas_anqp_set_element_len(buf, realm_list_len);
 return 0;
}
