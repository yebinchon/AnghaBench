
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct wpa_auth_config {int ip_addr_start; int ip_addr_end; } const wpa_auth_config ;
typedef struct wpa_auth_config u8 ;
struct TYPE_2__ {scalar_t__ wpa_group_rekey; scalar_t__ wpa_gmk_rekey; } ;
struct wpa_authenticator {int ip_pool; TYPE_1__ conf; int * pmksa; struct wpa_authenticator* wpa_ie; struct wpa_authenticator* group; int * ft_pmk_cache; void* cb_ctx; struct wpa_auth_callbacks const* cb; TYPE_1__* addr; } ;
struct wpa_auth_callbacks {int dummy; } ;


 int ETH_ALEN ;
 int MSG_ERROR ;
 int WPA_GET_BE32 (int ) ;
 int bitfield_alloc (int) ;
 int eloop_register_timeout (scalar_t__,int ,int ,struct wpa_authenticator*,int *) ;
 int os_free (struct wpa_authenticator*) ;
 int os_memcpy (TYPE_1__*,struct wpa_auth_config const*,int) ;
 struct wpa_authenticator* os_zalloc (int) ;
 int pmksa_cache_auth_deinit (int *) ;
 int * pmksa_cache_auth_init (int ,struct wpa_authenticator*) ;
 scalar_t__ wpa_auth_gen_wpa_ie (struct wpa_authenticator*) ;
 int wpa_auth_pmksa_free_cb ;
 int * wpa_ft_pmk_cache_init () ;
 struct wpa_authenticator* wpa_group_init (struct wpa_authenticator*,int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpa_rekey_gmk ;
 int wpa_rekey_gtk ;

struct wpa_authenticator * wpa_init(const u8 *addr,
        struct wpa_auth_config *conf,
        const struct wpa_auth_callbacks *cb,
        void *cb_ctx)
{
 struct wpa_authenticator *wpa_auth;

 wpa_auth = os_zalloc(sizeof(struct wpa_authenticator));
 if (wpa_auth == ((void*)0))
  return ((void*)0);
 os_memcpy(wpa_auth->addr, addr, ETH_ALEN);
 os_memcpy(&wpa_auth->conf, conf, sizeof(*conf));
 wpa_auth->cb = cb;
 wpa_auth->cb_ctx = cb_ctx;

 if (wpa_auth_gen_wpa_ie(wpa_auth)) {
  wpa_printf(MSG_ERROR, "Could not generate WPA IE.");
  os_free(wpa_auth);
  return ((void*)0);
 }

 wpa_auth->group = wpa_group_init(wpa_auth, 0, 1);
 if (wpa_auth->group == ((void*)0)) {
  os_free(wpa_auth->wpa_ie);
  os_free(wpa_auth);
  return ((void*)0);
 }

 wpa_auth->pmksa = pmksa_cache_auth_init(wpa_auth_pmksa_free_cb,
      wpa_auth);
 if (wpa_auth->pmksa == ((void*)0)) {
  wpa_printf(MSG_ERROR, "PMKSA cache initialization failed.");
  os_free(wpa_auth->group);
  os_free(wpa_auth->wpa_ie);
  os_free(wpa_auth);
  return ((void*)0);
 }
 if (wpa_auth->conf.wpa_gmk_rekey) {
  eloop_register_timeout(wpa_auth->conf.wpa_gmk_rekey, 0,
           wpa_rekey_gmk, wpa_auth, ((void*)0));
 }

 if (wpa_auth->conf.wpa_group_rekey) {
  eloop_register_timeout(wpa_auth->conf.wpa_group_rekey, 0,
           wpa_rekey_gtk, wpa_auth, ((void*)0));
 }
 return wpa_auth;
}
