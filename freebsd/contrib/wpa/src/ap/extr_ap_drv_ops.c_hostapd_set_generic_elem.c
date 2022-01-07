
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_generic_elem ) (int ,int const*,size_t) ;} ;


 int stub1 (int ,int const*,size_t) ;

int hostapd_set_generic_elem(struct hostapd_data *hapd, const u8 *elem,
        size_t elem_len)
{
 if (hapd->driver == ((void*)0) || hapd->driver->set_generic_elem == ((void*)0))
  return 0;
 return hapd->driver->set_generic_elem(hapd->drv_priv, elem, elem_len);
}
