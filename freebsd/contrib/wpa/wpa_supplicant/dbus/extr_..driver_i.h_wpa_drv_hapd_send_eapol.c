
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* hapd_send_eapol ) (int ,int const*,int const*,size_t,int,int const*,int ) ;} ;


 int stub1 (int ,int const*,int const*,size_t,int,int const*,int ) ;

__attribute__((used)) static inline int wpa_drv_hapd_send_eapol(struct wpa_supplicant *wpa_s,
       const u8 *addr, const u8 *data,
       size_t data_len, int encrypt,
       const u8 *own_addr, u32 flags)
{
 if (wpa_s->driver->hapd_send_eapol)
  return wpa_s->driver->hapd_send_eapol(wpa_s->drv_priv, addr,
            data, data_len, encrypt,
            own_addr, flags);
 return -1;
}
