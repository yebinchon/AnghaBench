
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int p2p_device_addr; } ;
struct p2p_device {TYPE_1__ info; } ;
struct p2p_data {int dummy; } ;


 int ETH_ALEN ;
 int os_memcpy (int *,int ,int ) ;
 struct p2p_device* p2p_get_device_interface (struct p2p_data*,int const*) ;

int p2p_get_dev_addr(struct p2p_data *p2p, const u8 *iface_addr,
      u8 *dev_addr)
{
 struct p2p_device *dev = p2p_get_device_interface(p2p, iface_addr);
 if (dev == ((void*)0))
  return -1;
 os_memcpy(dev_addr, dev->info.p2p_device_addr, ETH_ALEN);
 return 0;
}
