
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* get_survey ) (int ,unsigned int) ;} ;


 int stub1 (int ,unsigned int) ;

__attribute__((used)) static inline int hostapd_drv_get_survey(struct hostapd_data *hapd,
      unsigned int freq)
{
 if (hapd->driver == ((void*)0))
  return -1;
 if (!hapd->driver->get_survey)
  return -1;
 return hapd->driver->get_survey(hapd->drv_priv, freq);
}
