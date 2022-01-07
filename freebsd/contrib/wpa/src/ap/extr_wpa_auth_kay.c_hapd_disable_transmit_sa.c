
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transmit_sa {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* disable_transmit_sa ) (int ,struct transmit_sa*) ;} ;


 int stub1 (int ,struct transmit_sa*) ;

__attribute__((used)) static int hapd_disable_transmit_sa(void *priv, struct transmit_sa *sa)
{
 struct hostapd_data *hapd = priv;

 if (!hapd->driver->disable_transmit_sa)
  return -1;
 return hapd->driver->disable_transmit_sa(hapd->drv_priv, sa);
}
