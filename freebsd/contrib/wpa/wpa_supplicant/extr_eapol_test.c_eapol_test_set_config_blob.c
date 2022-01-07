
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_config_blob {int dummy; } ;
struct eapol_test_data {TYPE_1__* wpa_s; } ;
struct TYPE_2__ {int conf; } ;


 int wpa_config_set_blob (int ,struct wpa_config_blob*) ;

__attribute__((used)) static void eapol_test_set_config_blob(void *ctx,
           struct wpa_config_blob *blob)
{
 struct eapol_test_data *e = ctx;
 wpa_config_set_blob(e->wpa_s->conf, blob);
}
