
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ wpa_gmk_rekey; } ;
struct wpa_authenticator {TYPE_2__ conf; TYPE_1__* group; } ;
struct TYPE_3__ {int GMK; } ;


 int LOGGER_DEBUG ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WPA_GMK_LEN ;
 int eloop_register_timeout (scalar_t__,int ,void (*) (void*,void*),struct wpa_authenticator*,int *) ;
 scalar_t__ random_get_bytes (int ,int ) ;
 int wpa_auth_logger (struct wpa_authenticator*,int *,int ,char*) ;
 int wpa_hexdump_key (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wpa_rekey_gmk(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_authenticator *wpa_auth = eloop_ctx;

 if (random_get_bytes(wpa_auth->group->GMK, WPA_GMK_LEN)) {
  wpa_printf(MSG_ERROR, "Failed to get random data for WPA "
      "initialization.");
 } else {
  wpa_auth_logger(wpa_auth, ((void*)0), LOGGER_DEBUG, "GMK rekeyd");
  wpa_hexdump_key(MSG_DEBUG, "GMK",
    wpa_auth->group->GMK, WPA_GMK_LEN);
 }

 if (wpa_auth->conf.wpa_gmk_rekey) {
  eloop_register_timeout(wpa_auth->conf.wpa_gmk_rekey, 0,
           wpa_rekey_gmk, wpa_auth, ((void*)0));
 }
}
