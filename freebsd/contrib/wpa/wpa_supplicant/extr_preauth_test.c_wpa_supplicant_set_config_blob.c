
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; } ;
struct wpa_config_blob {int dummy; } ;


 int wpa_config_set_blob (int ,struct wpa_config_blob*) ;

__attribute__((used)) static void wpa_supplicant_set_config_blob(void *ctx,
        struct wpa_config_blob *blob)
{
 struct wpa_supplicant *wpa_s = ctx;
 wpa_config_set_blob(wpa_s->conf, blob);
}
