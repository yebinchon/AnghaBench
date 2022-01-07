
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; int confname; } ;
struct wpa_config_blob {int dummy; } ;
struct TYPE_3__ {scalar_t__ update_config; } ;


 int MSG_DEBUG ;
 int wpa_config_set_blob (TYPE_1__*,struct wpa_config_blob*) ;
 int wpa_config_write (int ,TYPE_1__*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wpa_supplicant_set_config_blob(void *ctx,
        struct wpa_config_blob *blob)
{
 struct wpa_supplicant *wpa_s = ctx;
 wpa_config_set_blob(wpa_s->conf, blob);
 if (wpa_s->conf->update_config) {
  int ret = wpa_config_write(wpa_s->confname, wpa_s->conf);
  if (ret) {
   wpa_printf(MSG_DEBUG, "Failed to update config after "
       "blob set");
  }
 }
}
