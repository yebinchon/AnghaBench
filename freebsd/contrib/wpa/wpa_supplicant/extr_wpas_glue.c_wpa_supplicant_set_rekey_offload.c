
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;


 int wpa_drv_set_rekey_info (struct wpa_supplicant*,int const*,size_t,int const*,size_t,int const*) ;

__attribute__((used)) static void wpa_supplicant_set_rekey_offload(void *ctx,
          const u8 *kek, size_t kek_len,
          const u8 *kck, size_t kck_len,
          const u8 *replay_ctr)
{
 struct wpa_supplicant *wpa_s = ctx;

 wpa_drv_set_rekey_info(wpa_s, kek, kek_len, kck, kck_len, replay_ctr);
}
