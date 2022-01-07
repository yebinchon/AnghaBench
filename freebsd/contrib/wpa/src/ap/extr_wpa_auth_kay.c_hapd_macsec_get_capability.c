
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
typedef enum macsec_cap { ____Placeholder_macsec_cap } macsec_cap ;
struct TYPE_2__ {int (* macsec_get_capability ) (int ,int*) ;} ;


 int stub1 (int ,int*) ;

__attribute__((used)) static int hapd_macsec_get_capability(void *priv, enum macsec_cap *cap)
{
 struct hostapd_data *hapd = priv;

 if (!hapd->driver->macsec_get_capability)
  return -1;
 return hapd->driver->macsec_get_capability(hapd->drv_priv, cap);
}
