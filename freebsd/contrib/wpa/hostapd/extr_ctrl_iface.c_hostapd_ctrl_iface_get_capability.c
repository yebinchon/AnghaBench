
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;


 int MSG_DEBUG ;
 int os_snprintf (char*,size_t,char*) ;
 scalar_t__ os_snprintf_error (size_t,int) ;
 scalar_t__ os_strcmp (char const*,char*) ;
 int wpa_printf (int ,char*,char const*) ;

__attribute__((used)) static int hostapd_ctrl_iface_get_capability(struct hostapd_data *hapd,
          const char *field, char *buf,
          size_t buflen)
{
 wpa_printf(MSG_DEBUG, "CTRL_IFACE: GET_CAPABILITY '%s'", field);
 wpa_printf(MSG_DEBUG, "CTRL_IFACE: Unknown GET_CAPABILITY field '%s'",
     field);

 return -1;
}
