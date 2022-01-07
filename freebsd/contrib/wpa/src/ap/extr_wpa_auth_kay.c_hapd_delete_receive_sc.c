
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct receive_sc {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* delete_receive_sc ) (int ,struct receive_sc*) ;} ;


 int stub1 (int ,struct receive_sc*) ;

__attribute__((used)) static int hapd_delete_receive_sc(void *priv, struct receive_sc *sc)
{
 struct hostapd_data *hapd = priv;

 if (!hapd->driver->delete_receive_sc)
  return -1;
 return hapd->driver->delete_receive_sc(hapd->drv_priv, sc);
}
