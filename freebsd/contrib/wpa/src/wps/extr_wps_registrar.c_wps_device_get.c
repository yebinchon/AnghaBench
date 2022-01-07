
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int mac_addr; } ;
struct wps_registrar_device {TYPE_1__ dev; struct wps_registrar_device* next; } ;
struct wps_registrar {struct wps_registrar_device* devices; } ;


 int ETH_ALEN ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;

__attribute__((used)) static struct wps_registrar_device * wps_device_get(struct wps_registrar *reg,
          const u8 *addr)
{
 struct wps_registrar_device *dev;

 for (dev = reg->devices; dev; dev = dev->next) {
  if (os_memcmp(dev->dev.mac_addr, addr, ETH_ALEN) == 0)
   return dev;
 }
 return ((void*)0);
}
