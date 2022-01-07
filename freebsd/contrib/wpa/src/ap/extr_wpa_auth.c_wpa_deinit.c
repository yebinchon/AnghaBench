
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_group {struct wpa_group* next; struct wpa_group* group; struct wpa_group* wpa_ie; int ip_pool; int * ft_pmk_cache; int pmksa; } ;
struct wpa_authenticator {struct wpa_authenticator* next; struct wpa_authenticator* group; struct wpa_authenticator* wpa_ie; int ip_pool; int * ft_pmk_cache; int pmksa; } ;


 int bitfield_free (int ) ;
 int eloop_cancel_timeout (int ,struct wpa_group*,int *) ;
 int os_free (struct wpa_group*) ;
 int pmksa_cache_auth_deinit (int ) ;
 int wpa_ft_deinit (struct wpa_group*) ;
 int wpa_ft_pmk_cache_deinit (int *) ;
 int wpa_rekey_gmk ;
 int wpa_rekey_gtk ;

void wpa_deinit(struct wpa_authenticator *wpa_auth)
{
 struct wpa_group *group, *prev;

 eloop_cancel_timeout(wpa_rekey_gmk, wpa_auth, ((void*)0));
 eloop_cancel_timeout(wpa_rekey_gtk, wpa_auth, ((void*)0));

 pmksa_cache_auth_deinit(wpa_auth->pmksa);
 os_free(wpa_auth->wpa_ie);

 group = wpa_auth->group;
 while (group) {
  prev = group;
  group = group->next;
  os_free(prev);
 }

 os_free(wpa_auth);
}
