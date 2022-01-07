
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* update_dh_ie ) (int ,int const*,int ,int const*,size_t) ;} ;


 int stub1 (int ,int const*,int ,int const*,size_t) ;

int hostapd_drv_update_dh_ie(struct hostapd_data *hapd, const u8 *peer,
        u16 reason_code, const u8 *ie, size_t ielen)
{
 if (!hapd->driver || !hapd->driver->update_dh_ie || !hapd->drv_priv)
  return 0;
 return hapd->driver->update_dh_ie(hapd->drv_priv, peer, reason_code,
       ie, ielen);
}
