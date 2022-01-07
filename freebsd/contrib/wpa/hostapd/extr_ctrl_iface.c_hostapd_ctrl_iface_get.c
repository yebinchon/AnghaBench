
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;


 int MSG_DEBUG ;
 int VERSION_STR ;
 int os_snprintf (char*,size_t,char*,int ) ;
 scalar_t__ os_snprintf_error (size_t,int) ;
 scalar_t__ os_strcmp (char*,char*) ;
 int tls_get_library_version (char*,size_t) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static int hostapd_ctrl_iface_get(struct hostapd_data *hapd, char *cmd,
      char *buf, size_t buflen)
{
 int res;

 wpa_printf(MSG_DEBUG, "CTRL_IFACE GET '%s'", cmd);

 if (os_strcmp(cmd, "version") == 0) {
  res = os_snprintf(buf, buflen, "%s", VERSION_STR);
  if (os_snprintf_error(buflen, res))
   return -1;
  return res;
 } else if (os_strcmp(cmd, "tls_library") == 0) {
  res = tls_get_library_version(buf, buflen);
  if (os_snprintf_error(buflen, res))
   return -1;
  return res;
 }

 return -1;
}
