
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int num_bss; struct hostapd_data** bss; } ;
struct hostapd_data {int setup_complete_cb_ctx; int (* setup_complete_cb ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void hostapd_interface_setup_failure_handler(void *eloop_ctx,
          void *timeout_ctx)
{
 struct hostapd_iface *iface = eloop_ctx;
 struct hostapd_data *hapd;

 if (iface->num_bss < 1 || !iface->bss || !iface->bss[0])
  return;
 hapd = iface->bss[0];
 if (hapd->setup_complete_cb)
  hapd->setup_complete_cb(hapd->setup_complete_cb_ctx);
}
