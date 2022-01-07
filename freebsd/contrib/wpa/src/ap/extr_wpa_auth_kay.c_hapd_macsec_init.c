
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macsec_init_params {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* macsec_init ) (int ,struct macsec_init_params*) ;} ;


 int stub1 (int ,struct macsec_init_params*) ;

__attribute__((used)) static int hapd_macsec_init(void *priv, struct macsec_init_params *params)
{
 struct hostapd_data *hapd = priv;

 if (!hapd->driver->macsec_init)
  return -1;
 return hapd->driver->macsec_init(hapd->drv_priv, params);
}
