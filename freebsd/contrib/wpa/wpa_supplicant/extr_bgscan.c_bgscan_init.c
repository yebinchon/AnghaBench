
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {struct bgscan_ops const* bgscan; int * bgscan_priv; } ;
struct wpa_ssid {int dummy; } ;
struct bgscan_ops {int name; int * (* init ) (struct wpa_supplicant*,char const*,struct wpa_ssid*) ;} ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int bgscan_deinit (struct wpa_supplicant*) ;
 struct bgscan_ops** bgscan_modules ;
 char* os_strchr (char const*,char) ;
 size_t os_strlen (char const*) ;
 scalar_t__ os_strncmp (char const*,int ,size_t) ;
 int * stub1 (struct wpa_supplicant*,char const*,struct wpa_ssid*) ;
 int wpa_printf (int ,char*,char const*,...) ;

int bgscan_init(struct wpa_supplicant *wpa_s, struct wpa_ssid *ssid,
  const char *name)
{
 const char *params;
 size_t nlen;
 int i;
 const struct bgscan_ops *ops = ((void*)0);

 bgscan_deinit(wpa_s);

 params = os_strchr(name, ':');
 if (params == ((void*)0)) {
  params = "";
  nlen = os_strlen(name);
 } else {
  nlen = params - name;
  params++;
 }

 for (i = 0; bgscan_modules[i]; i++) {
  if (os_strncmp(name, bgscan_modules[i]->name, nlen) == 0) {
   ops = bgscan_modules[i];
   break;
  }
 }

 if (ops == ((void*)0)) {
  wpa_printf(MSG_ERROR, "bgscan: Could not find module "
      "matching the parameter '%s'", name);
  return -1;
 }

 wpa_s->bgscan_priv = ops->init(wpa_s, params, ssid);
 if (wpa_s->bgscan_priv == ((void*)0))
  return -1;
 wpa_s->bgscan = ops;
 wpa_printf(MSG_DEBUG, "bgscan: Initialized module '%s' with "
     "parameters '%s'", ops->name, params);

 return 0;
}
