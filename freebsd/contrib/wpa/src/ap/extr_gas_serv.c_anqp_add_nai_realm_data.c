
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct hostapd_nai_realm_data {int * realm; scalar_t__ encoding; } ;


 int MSG_DEBUG ;
 int anqp_add_nai_realm_eap (struct wpabuf*,struct hostapd_nai_realm_data*) ;
 int gas_anqp_set_element_len (struct wpabuf*,int *) ;
 scalar_t__ os_strlen (int ) ;
 int wpa_printf (int ,char*,int ,int) ;
 int * wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_str (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,scalar_t__) ;

__attribute__((used)) static void anqp_add_nai_realm_data(struct wpabuf *buf,
        struct hostapd_nai_realm_data *realm,
        unsigned int realm_idx)
{
 u8 *realm_data_len;

 wpa_printf(MSG_DEBUG, "realm=%s, len=%d", realm->realm[realm_idx],
     (int) os_strlen(realm->realm[realm_idx]));
 realm_data_len = wpabuf_put(buf, 2);
 wpabuf_put_u8(buf, realm->encoding);
 wpabuf_put_u8(buf, os_strlen(realm->realm[realm_idx]));
 wpabuf_put_str(buf, realm->realm[realm_idx]);
 anqp_add_nai_realm_eap(buf, realm);
 gas_anqp_set_element_len(buf, realm_data_len);
}
