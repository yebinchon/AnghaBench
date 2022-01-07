
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpa_supplicant {int keys_cleared; } ;


 int BIT (int) ;
 int MLME_SETPROTECTION_KEY_TYPE_PAIRWISE ;
 int MLME_SETPROTECTION_PROTECT_TYPE_NONE ;
 int WPA_ALG_NONE ;
 int is_zero_ether_addr (int const*) ;
 int wpa_drv_mlme_setprotection (struct wpa_supplicant*,int const*,int ,int ) ;
 int wpa_drv_set_key (struct wpa_supplicant*,int ,int const*,int,int ,int *,int ,int *,int ) ;

void wpa_clear_keys(struct wpa_supplicant *wpa_s, const u8 *addr)
{
 int i, max;




 max = 4;



 for (i = 0; i < max; i++) {
  if (wpa_s->keys_cleared & BIT(i))
   continue;
  wpa_drv_set_key(wpa_s, WPA_ALG_NONE, ((void*)0), i, 0, ((void*)0), 0,
    ((void*)0), 0);
 }
 if (!(wpa_s->keys_cleared & BIT(0)) && addr &&
     !is_zero_ether_addr(addr)) {
  wpa_drv_set_key(wpa_s, WPA_ALG_NONE, addr, 0, 0, ((void*)0), 0, ((void*)0),
    0);

  wpa_drv_mlme_setprotection(
   wpa_s, addr,
   MLME_SETPROTECTION_PROTECT_TYPE_NONE,
   MLME_SETPROTECTION_KEY_TYPE_PAIRWISE);
 }
 wpa_s->keys_cleared = (u32) -1;
}
