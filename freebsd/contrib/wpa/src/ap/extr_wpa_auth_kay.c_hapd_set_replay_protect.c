
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_replay_protect ) (int ,int ,int ) ;} ;
typedef int Boolean ;


 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int hapd_set_replay_protect(void *priv, Boolean enabled, u32 window)
{
 struct hostapd_data *hapd = priv;

 if (!hapd->driver->set_replay_protect)
  return -1;
 return hapd->driver->set_replay_protect(hapd->drv_priv, enabled,
       window);
}
