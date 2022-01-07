
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_iface {TYPE_1__* interfaces; } ;
struct TYPE_2__ {int (* for_each_interface ) (TYPE_1__*,int ,int const**) ;} ;


 int get_uuid_cb ;
 int stub1 (TYPE_1__*,int ,int const**) ;

__attribute__((used)) static const u8 * get_own_uuid(struct hostapd_iface *iface)
{
 const u8 *uuid;
 if (iface->interfaces == ((void*)0) ||
     iface->interfaces->for_each_interface == ((void*)0))
  return ((void*)0);
 uuid = ((void*)0);
 iface->interfaces->for_each_interface(iface->interfaces, get_uuid_cb,
           &uuid);
 return uuid;
}
