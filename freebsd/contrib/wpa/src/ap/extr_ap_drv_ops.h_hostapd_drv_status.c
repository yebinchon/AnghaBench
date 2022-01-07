
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* status ) (int ,char*,size_t) ;} ;


 int stub1 (int ,char*,size_t) ;

__attribute__((used)) static inline int hostapd_drv_status(struct hostapd_data *hapd, char *buf,
         size_t buflen)
{
 if (!hapd->driver || !hapd->driver->status || !hapd->drv_priv)
  return -1;
 return hapd->driver->status(hapd->drv_priv, buf, buflen);
}
