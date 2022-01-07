
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_flags; TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ key_mgmt_offload; } ;


 int WPA_ALG_PMK ;
 int WPA_DRIVER_FLAGS_KEY_MGMT_OFFLOAD ;
 int wpa_drv_set_key (struct wpa_supplicant*,int ,int *,int ,int ,int *,int ,int const*,size_t) ;

__attribute__((used)) static int wpa_supplicant_key_mgmt_set_pmk(void *ctx, const u8 *pmk,
        size_t pmk_len)
{
 struct wpa_supplicant *wpa_s = ctx;

 if (wpa_s->conf->key_mgmt_offload &&
     (wpa_s->drv_flags & WPA_DRIVER_FLAGS_KEY_MGMT_OFFLOAD))
  return wpa_drv_set_key(wpa_s, WPA_ALG_PMK, ((void*)0), 0, 0,
           ((void*)0), 0, pmk, pmk_len);
 else
  return 0;
}
