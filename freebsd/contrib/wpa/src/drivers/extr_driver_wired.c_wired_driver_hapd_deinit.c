
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sock; } ;
struct wpa_driver_wired_data {scalar_t__ dhcp_sock; TYPE_1__ common; } ;


 int close (scalar_t__) ;
 int eloop_unregister_read_sock (scalar_t__) ;
 int os_free (struct wpa_driver_wired_data*) ;

__attribute__((used)) static void wired_driver_hapd_deinit(void *priv)
{
 struct wpa_driver_wired_data *drv = priv;

 if (drv->common.sock >= 0) {
  eloop_unregister_read_sock(drv->common.sock);
  close(drv->common.sock);
 }

 if (drv->dhcp_sock >= 0) {
  eloop_unregister_read_sock(drv->dhcp_sock);
  close(drv->dhcp_sock);
 }

 os_free(drv);
}
