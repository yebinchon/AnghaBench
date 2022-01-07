
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int ifname; struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;


 unsigned int ARRAY_SIZE (struct wpa_supplicant**) ;
 int MSG_DEBUG ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strcmp (char*,int ) ;
 int wpa_printf (int ,char*,char*) ;
 int wpa_supplicant_ctrl_iface_dup_network (struct wpa_supplicant*,char*,struct wpa_supplicant*) ;

__attribute__((used)) static int wpas_global_ctrl_iface_dup_network(struct wpa_global *global,
           char *cmd)
{
 struct wpa_supplicant *wpa_s[2];
 char *p;
 unsigned int i;




 for (i = 0; i < ARRAY_SIZE(wpa_s) ; i++) {
  p = os_strchr(cmd, ' ');
  if (p == ((void*)0))
   return -1;
  *p = '\0';

  wpa_s[i] = global->ifaces;
  for (; wpa_s[i]; wpa_s[i] = wpa_s[i]->next) {
   if (os_strcmp(cmd, wpa_s[i]->ifname) == 0)
    break;
  }

  if (!wpa_s[i]) {
   wpa_printf(MSG_DEBUG,
       "CTRL_IFACE: Could not find iface=%s", cmd);
   return -1;
  }

  cmd = p + 1;
 }

 return wpa_supplicant_ctrl_iface_dup_network(wpa_s[0], cmd, wpa_s[1]);
}
