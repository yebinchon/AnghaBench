
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* add_tx_ts ) (int ,int ,int const*,int ,int ) ;} ;


 int stub1 (int ,int ,int const*,int ,int ) ;

__attribute__((used)) static inline int wpa_drv_add_ts(struct wpa_supplicant *wpa_s, u8 tsid,
     const u8 *address, u8 user_priority,
     u16 admitted_time)
{
 if (!wpa_s->driver->add_tx_ts)
  return -1;
 return wpa_s->driver->add_tx_ts(wpa_s->drv_priv, tsid, address,
     user_priority, admitted_time);
}
