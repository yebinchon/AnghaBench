
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int * drv_priv; TYPE_1__* driver; } ;
typedef enum drv_br_port_attr { ____Placeholder_drv_br_port_attr } drv_br_port_attr ;
struct TYPE_2__ {int (* br_port_set_attr ) (int *,int,unsigned int) ;} ;


 int stub1 (int *,int,unsigned int) ;

__attribute__((used)) static inline int hostapd_drv_br_port_set_attr(struct hostapd_data *hapd,
            enum drv_br_port_attr attr,
            unsigned int val)
{
 if (hapd->driver == ((void*)0) || hapd->drv_priv == ((void*)0) ||
     hapd->driver->br_port_set_attr == ((void*)0))
  return -1;
 return hapd->driver->br_port_set_attr(hapd->drv_priv, attr, val);
}
