
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* enable_protect_frames ) (int ,int ) ;} ;
typedef int Boolean ;


 int stub1 (int ,int ) ;

__attribute__((used)) static int hapd_enable_protect_frames(void *priv, Boolean enabled)
{
 struct hostapd_data *hapd = priv;

 if (!hapd->driver->enable_protect_frames)
  return -1;
 return hapd->driver->enable_protect_frames(hapd->drv_priv, enabled);
}
