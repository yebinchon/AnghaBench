
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* send_mlme ) (int ,void const*,size_t,int,int ,int *,int ) ;} ;


 int stub1 (int ,void const*,size_t,int,int ,int *,int ) ;

int hostapd_drv_send_mlme(struct hostapd_data *hapd,
     const void *msg, size_t len, int noack)
{
 if (!hapd->driver || !hapd->driver->send_mlme || !hapd->drv_priv)
  return 0;
 return hapd->driver->send_mlme(hapd->drv_priv, msg, len, noack, 0,
           ((void*)0), 0);
}
