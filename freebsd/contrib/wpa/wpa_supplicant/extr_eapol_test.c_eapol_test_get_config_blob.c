
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_config_blob {int dummy; } ;
struct eapol_test_data {TYPE_1__* wpa_s; } ;
struct TYPE_2__ {int conf; } ;


 struct wpa_config_blob const* wpa_config_get_blob (int ,char const*) ;

__attribute__((used)) static const struct wpa_config_blob *
eapol_test_get_config_blob(void *ctx, const char *name)
{
 struct eapol_test_data *e = ctx;
 return wpa_config_get_blob(e->wpa_s->conf, name);
}
