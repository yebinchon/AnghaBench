
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_device {scalar_t__ wps_prov_info; } ;
struct p2p_data {int dummy; } ;


 struct p2p_device* p2p_get_device (struct p2p_data*,int const*) ;

void p2p_clear_provisioning_info(struct p2p_data *p2p, const u8 *addr)
{
 struct p2p_device *dev = ((void*)0);

 if (!addr || !p2p)
  return;

 dev = p2p_get_device(p2p, addr);
 if (dev)
  dev->wps_prov_info = 0;
}
