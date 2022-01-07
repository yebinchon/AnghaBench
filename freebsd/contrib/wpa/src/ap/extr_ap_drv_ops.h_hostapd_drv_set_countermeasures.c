
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* hapd_set_countermeasures ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static inline int hostapd_drv_set_countermeasures(struct hostapd_data *hapd,
        int enabled)
{
 if (hapd->driver == ((void*)0) ||
     hapd->driver->hapd_set_countermeasures == ((void*)0))
  return 0;
 return hapd->driver->hapd_set_countermeasures(hapd->drv_priv, enabled);
}
