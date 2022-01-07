
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_message {int dummy; } ;
struct p2p_device {int last_seen; } ;
struct p2p_data {int dummy; } ;


 int os_get_reltime (int *) ;
 int p2p_add_dev_info (struct p2p_data*,int const*,struct p2p_device*,struct p2p_message*) ;
 struct p2p_device* p2p_create_device (struct p2p_data*,int const*) ;
 struct p2p_device* p2p_get_device (struct p2p_data*,int const*) ;

struct p2p_device * p2p_add_dev_from_go_neg_req(struct p2p_data *p2p,
      const u8 *addr,
      struct p2p_message *msg)
{
 struct p2p_device *dev;

 dev = p2p_get_device(p2p, addr);
 if (dev) {
  os_get_reltime(&dev->last_seen);
  return dev;
 }

 dev = p2p_create_device(p2p, addr);
 if (dev == ((void*)0))
  return ((void*)0);

 p2p_add_dev_info(p2p, addr, dev, msg);

 return dev;
}
