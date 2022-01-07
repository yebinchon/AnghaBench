
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;


 int wpas_p2p_wps_success (struct wpa_supplicant*,int const*,int) ;

__attribute__((used)) static void ap_wps_reg_success_cb(void *ctx, const u8 *mac_addr,
      const u8 *uuid_e)
{
 struct wpa_supplicant *wpa_s = ctx;
 wpas_p2p_wps_success(wpa_s, mac_addr, 1);
}
