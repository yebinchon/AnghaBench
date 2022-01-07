
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int * current_ssid; } ;
struct eapol_test_data {struct wpa_supplicant* wpa_s; } ;


 int MSG_DEBUG ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 scalar_t__ wpa_config_set (int *,char*,char*,int ) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_snprintf_hex (char*,size_t,int const*,size_t) ;

__attribute__((used)) static void eapol_test_set_anon_id(void *ctx, const u8 *id, size_t len)
{
 struct eapol_test_data *e = ctx;
 struct wpa_supplicant *wpa_s = e->wpa_s;
 char *str;
 int res;

 wpa_hexdump_ascii(MSG_DEBUG, "EAP method updated anonymous_identity",
     id, len);

 if (wpa_s->current_ssid == ((void*)0))
  return;

 if (id == ((void*)0)) {
  if (wpa_config_set(wpa_s->current_ssid, "anonymous_identity",
       "NULL", 0) < 0)
   return;
 } else {
  str = os_malloc(len * 2 + 1);
  if (str == ((void*)0))
   return;
  wpa_snprintf_hex(str, len * 2 + 1, id, len);
  res = wpa_config_set(wpa_s->current_ssid, "anonymous_identity",
         str, 0);
  os_free(str);
  if (res < 0)
   return;
 }
}
