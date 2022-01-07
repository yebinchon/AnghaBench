
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* send_tdls_mgmt ) (int ,int const*,int ,int ,int ,int ,int,int const*,size_t) ;} ;


 int stub1 (int ,int const*,int ,int ,int ,int ,int,int const*,size_t) ;

__attribute__((used)) static inline int wpa_drv_send_tdls_mgmt(struct wpa_supplicant *wpa_s,
      const u8 *dst, u8 action_code,
      u8 dialog_token, u16 status_code,
      u32 peer_capab, int initiator,
      const u8 *buf, size_t len)
{
 if (wpa_s->driver->send_tdls_mgmt) {
  return wpa_s->driver->send_tdls_mgmt(wpa_s->drv_priv, dst,
           action_code, dialog_token,
           status_code, peer_capab,
           initiator, buf, len);
 }
 return -1;
}
