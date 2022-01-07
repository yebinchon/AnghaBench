
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_frag ) (int ,int) ;} ;


 int stub1 (int ,int) ;

int hostapd_set_frag(struct hostapd_data *hapd, int frag)
{
 if (hapd->driver == ((void*)0) || hapd->driver->set_frag == ((void*)0))
  return 0;
 return hapd->driver->set_frag(hapd->drv_priv, frag);
}
