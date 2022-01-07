
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_device {int interface_addr; } ;
struct p2p_data {int dummy; } ;


 int ETH_ALEN ;
 scalar_t__ is_zero_ether_addr (int ) ;
 int os_memcpy (int *,int ,int ) ;
 struct p2p_device* p2p_get_device (struct p2p_data*,int const*) ;

int p2p_get_interface_addr(struct p2p_data *p2p, const u8 *dev_addr,
      u8 *iface_addr)
{
 struct p2p_device *dev = p2p_get_device(p2p, dev_addr);
 if (dev == ((void*)0) || is_zero_ether_addr(dev->interface_addr))
  return -1;
 os_memcpy(iface_addr, dev->interface_addr, ETH_ALEN);
 return 0;
}
