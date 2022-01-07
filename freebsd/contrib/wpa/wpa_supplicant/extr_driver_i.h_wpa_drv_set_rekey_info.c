
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_rekey_info ) (int ,int const*,size_t,int const*,size_t,int const*) ;} ;


 int stub1 (int ,int const*,size_t,int const*,size_t,int const*) ;

__attribute__((used)) static inline void wpa_drv_set_rekey_info(struct wpa_supplicant *wpa_s,
       const u8 *kek, size_t kek_len,
       const u8 *kck, size_t kck_len,
       const u8 *replay_ctr)
{
 if (!wpa_s->driver->set_rekey_info)
  return;
 wpa_s->driver->set_rekey_info(wpa_s->drv_priv, kek, kek_len,
          kck, kck_len, replay_ctr);
}
