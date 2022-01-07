
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int * drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* br_delete_ip_neigh ) (int *,int ,int const*) ;} ;


 int stub1 (int *,int ,int const*) ;

__attribute__((used)) static inline int hostapd_drv_br_delete_ip_neigh(struct hostapd_data *hapd,
       u8 version, const u8 *ipaddr)
{
 if (hapd->driver == ((void*)0) || hapd->drv_priv == ((void*)0) ||
     hapd->driver->br_delete_ip_neigh == ((void*)0))
  return -1;
 return hapd->driver->br_delete_ip_neigh(hapd->drv_priv, version,
      ipaddr);
}
