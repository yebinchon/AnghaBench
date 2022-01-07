
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_authenticator {int pmksa; } ;
struct wpa_auth_okc_iter_data {scalar_t__ pmksa; int pmkid; int spa; int aa; } ;


 scalar_t__ pmksa_cache_get_okc (int ,int ,int ,int ) ;

__attribute__((used)) static int wpa_auth_okc_iter(struct wpa_authenticator *a, void *ctx)
{
 struct wpa_auth_okc_iter_data *data = ctx;
 data->pmksa = pmksa_cache_get_okc(a->pmksa, data->aa, data->spa,
       data->pmkid);
 if (data->pmksa)
  return 1;
 return 0;
}
