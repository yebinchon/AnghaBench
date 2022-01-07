
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transmit_sc {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* delete_transmit_sc ) (int ,struct transmit_sc*) ;} ;


 int stub1 (int ,struct transmit_sc*) ;

__attribute__((used)) static int hapd_delete_transmit_sc(void *priv, struct transmit_sc *sc)
{
 struct hostapd_data *hapd = priv;

 if (!hapd->driver->delete_transmit_sc)
  return -1;
 return hapd->driver->delete_transmit_sc(hapd->drv_priv, sc);
}
