
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_authenticator {int dummy; } ;
struct rsn_pmksa_cache_entry {int dummy; } ;


 int wpa_auth_for_each_sta (struct wpa_authenticator*,int ,struct rsn_pmksa_cache_entry*) ;
 int wpa_auth_pmksa_clear_cb ;

__attribute__((used)) static void wpa_auth_pmksa_free_cb(struct rsn_pmksa_cache_entry *entry,
       void *ctx)
{
 struct wpa_authenticator *wpa_auth = ctx;
 wpa_auth_for_each_sta(wpa_auth, wpa_auth_pmksa_clear_cb, entry);
}
