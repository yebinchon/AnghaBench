
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int (* xmit ) (struct device*,void const*,size_t) ;} ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ pcap_t ;


 struct device* get_device (int ) ;
 int stub1 (struct device*,void const*,size_t) ;

__attribute__((used)) static int pcap_sendpacket_dos (pcap_t *p, const void *buf, size_t len)
{
  struct device *dev = p ? get_device(p->fd) : ((void*)0);

  if (!dev || !dev->xmit)
     return (-1);
  return (*dev->xmit) (dev, buf, len);
}
