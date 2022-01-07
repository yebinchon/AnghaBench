
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_global {int dummy; } ;


 int MSG_DEBUG ;
 int atoi (char*) ;
 scalar_t__ os_strcasecmp (char*,char*) ;
 char* os_strchr (char*,char) ;
 int wifi_display_enable (struct wpa_global*,int) ;
 int wpa_printf (int ,char*,char*,char*) ;

__attribute__((used)) static int wpas_global_ctrl_iface_set(struct wpa_global *global, char *cmd)
{
 char *value;

 value = os_strchr(cmd, ' ');
 if (value == ((void*)0))
  return -1;
 *value++ = '\0';

 wpa_printf(MSG_DEBUG, "GLOBAL_CTRL_IFACE SET '%s'='%s'", cmd, value);
 value[-1] = ' ';

 return -1;
}
