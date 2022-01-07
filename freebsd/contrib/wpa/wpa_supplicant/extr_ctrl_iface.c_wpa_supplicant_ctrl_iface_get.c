
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ last_gtk_len; TYPE_2__* conf; int wpa; int last_gtk; TYPE_1__* global; } ;
struct TYPE_4__ {scalar_t__* country; } ;
struct TYPE_3__ {int wifi_display; scalar_t__ p2p_disabled; int * p2p; } ;


 int MSG_DEBUG ;
 int VERSION_STR ;
 scalar_t__ WPA_NONCE_LEN ;
 int os_snprintf (char*,size_t,char*,int,...) ;
 scalar_t__ os_snprintf_error (size_t,int) ;
 scalar_t__ os_strcasecmp (char*,char*) ;
 scalar_t__ os_strcmp (char*,char*) ;
 int tls_get_library_version (char*,size_t) ;
 int wpa_config_get_value (char*,TYPE_2__*,char*,size_t) ;
 int wpa_printf (int ,char*,char*) ;
 int wpa_sm_get_anonce (int ) ;
 int wpa_snprintf_hex (char*,size_t,int ,scalar_t__) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_get(struct wpa_supplicant *wpa_s,
      char *cmd, char *buf, size_t buflen)
{
 int res = -1;

 wpa_printf(MSG_DEBUG, "CTRL_IFACE GET '%s'", cmd);

 if (os_strcmp(cmd, "version") == 0) {
  res = os_snprintf(buf, buflen, "%s", VERSION_STR);
 } else if (os_strcasecmp(cmd, "country") == 0) {
  if (wpa_s->conf->country[0] && wpa_s->conf->country[1])
   res = os_snprintf(buf, buflen, "%c%c",
       wpa_s->conf->country[0],
       wpa_s->conf->country[1]);
 } else if (os_strcmp(cmd, "tls_library") == 0) {
  res = tls_get_library_version(buf, buflen);






 } else {
  res = wpa_config_get_value(cmd, wpa_s->conf, buf, buflen);
 }

 if (os_snprintf_error(buflen, res))
  return -1;
 return res;
}
