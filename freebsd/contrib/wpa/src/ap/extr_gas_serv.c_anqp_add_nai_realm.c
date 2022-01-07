
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct hostapd_nai_realm_data {char encoding; scalar_t__* realm; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {unsigned int nai_realm_count; struct hostapd_nai_realm_data* nai_realm_data; } ;


 int ANQP_NAI_REALM ;
 int anqp_add_nai_realm_eap (struct wpabuf*,struct hostapd_nai_realm_data*) ;
 scalar_t__ anqp_add_override (struct hostapd_data*,struct wpabuf*,int ) ;
 int* gas_anqp_add_element (struct wpabuf*,int ) ;
 int gas_anqp_set_element_len (struct wpabuf*,int*) ;
 int hs20_add_nai_home_realm_matches (struct hostapd_data*,struct wpabuf*,int const*,size_t) ;
 int* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_le16 (struct wpabuf*,unsigned int) ;
 int wpabuf_put_str (struct wpabuf*,scalar_t__) ;
 int wpabuf_put_u8 (struct wpabuf*,char) ;

__attribute__((used)) static void anqp_add_nai_realm(struct hostapd_data *hapd, struct wpabuf *buf,
          const u8 *home_realm, size_t home_realm_len,
          int nai_realm, int nai_home_realm)
{
 if (nai_realm && !nai_home_realm &&
     anqp_add_override(hapd, buf, ANQP_NAI_REALM))
  return;

 if (nai_realm && hapd->conf->nai_realm_data) {
  u8 *len;
  unsigned int i, j;
  len = gas_anqp_add_element(buf, ANQP_NAI_REALM);
  wpabuf_put_le16(buf, hapd->conf->nai_realm_count);
  for (i = 0; i < hapd->conf->nai_realm_count; i++) {
   u8 *realm_data_len, *realm_len;
   struct hostapd_nai_realm_data *realm;

   realm = &hapd->conf->nai_realm_data[i];
   realm_data_len = wpabuf_put(buf, 2);
   wpabuf_put_u8(buf, realm->encoding);
   realm_len = wpabuf_put(buf, 1);
   for (j = 0; realm->realm[j]; j++) {
    if (j > 0)
     wpabuf_put_u8(buf, ';');
    wpabuf_put_str(buf, realm->realm[j]);
   }
   *realm_len = (u8 *) wpabuf_put(buf, 0) - realm_len - 1;
   anqp_add_nai_realm_eap(buf, realm);
   gas_anqp_set_element_len(buf, realm_data_len);
  }
  gas_anqp_set_element_len(buf, len);
 } else if (nai_home_realm && hapd->conf->nai_realm_data && home_realm) {
  hs20_add_nai_home_realm_matches(hapd, buf, home_realm,
      home_realm_len);
 }
}
