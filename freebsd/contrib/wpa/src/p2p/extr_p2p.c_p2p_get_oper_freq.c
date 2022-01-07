
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_device {scalar_t__ oper_freq; } ;
struct p2p_data {int dummy; } ;


 struct p2p_device* p2p_get_device_interface (struct p2p_data*,int const*) ;

int p2p_get_oper_freq(struct p2p_data *p2p, const u8 *iface_addr)
{
 struct p2p_device *dev = p2p_get_device_interface(p2p, iface_addr);
 if (dev == ((void*)0))
  return -1;
 if (dev->oper_freq <= 0)
  return -1;
 return dev->oper_freq;
}
