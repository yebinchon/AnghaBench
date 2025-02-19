
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {size_t num_bss; TYPE_1__* conf; } ;
struct hostapd_bss_config {char* ctrl_interface; int iface; } ;
struct hapd_interfaces {size_t count; struct hostapd_iface** iface; } ;
struct TYPE_2__ {struct hostapd_bss_config** bss; } ;


 int os_snprintf (char*,int,char*,int ,...) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int os_strstr (char const*,char*) ;

__attribute__((used)) static int
hostapd_global_ctrl_iface_interfaces(struct hapd_interfaces *interfaces,
         const char *input,
         char *reply, int reply_size)
{
 size_t i, j;
 int res;
 char *pos, *end;
 struct hostapd_iface *iface;
 int show_ctrl = 0;

 if (input)
  show_ctrl = !!os_strstr(input, "ctrl");

 pos = reply;
 end = reply + reply_size;

 for (i = 0; i < interfaces->count; i++) {
  iface = interfaces->iface[i];

  for (j = 0; j < iface->num_bss; j++) {
   struct hostapd_bss_config *conf;

   conf = iface->conf->bss[j];
   if (show_ctrl)
    res = os_snprintf(pos, end - pos,
        "%s ctrl_iface=%s\n",
        conf->iface,
        conf->ctrl_interface ?
        conf->ctrl_interface : "N/A");
   else
    res = os_snprintf(pos, end - pos, "%s\n",
        conf->iface);
   if (os_snprintf_error(end - pos, res)) {
    *pos = '\0';
    return pos - reply;
   }
   pos += res;
  }
 }

 return pos - reply;
}
