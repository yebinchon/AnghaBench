
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* macsec_deinit ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static int hapd_macsec_deinit(void *priv)
{
 struct hostapd_data *hapd = priv;

 if (!hapd->driver->macsec_deinit)
  return -1;
 return hapd->driver->macsec_deinit(hapd->drv_priv);
}
