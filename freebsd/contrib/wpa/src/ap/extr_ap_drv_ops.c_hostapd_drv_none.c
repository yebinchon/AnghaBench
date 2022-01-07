
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {TYPE_1__* driver; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ os_strcmp (int ,char*) ;

int hostapd_drv_none(struct hostapd_data *hapd)
{
 return hapd->driver && os_strcmp(hapd->driver->name, "none") == 0;
}
