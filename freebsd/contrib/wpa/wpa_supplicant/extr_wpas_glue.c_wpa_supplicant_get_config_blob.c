
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; } ;
struct wpa_config_blob {int dummy; } ;


 struct wpa_config_blob const* wpa_config_get_blob (int ,char const*) ;

__attribute__((used)) static const struct wpa_config_blob *
wpa_supplicant_get_config_blob(void *ctx, const char *name)
{
 struct wpa_supplicant *wpa_s = ctx;
 return wpa_config_get_blob(wpa_s->conf, name);
}
