
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_usb_linux {int mmapbuflen; scalar_t__ mmapbuf; } ;
struct TYPE_3__ {int fd; struct pcap_usb_linux* priv; } ;
typedef TYPE_1__ pcap_t ;


 scalar_t__ MAP_FAILED ;
 int MAP_SHARED ;
 int MON_IOCQ_RING_SIZE ;
 int PROT_READ ;
 int ioctl (int ,int ) ;
 scalar_t__ mmap (int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static
int usb_mmap(pcap_t* handle)
{
 struct pcap_usb_linux *handlep = handle->priv;
 int len = ioctl(handle->fd, MON_IOCQ_RING_SIZE);
 if (len < 0)
  return 0;

 handlep->mmapbuflen = len;
 handlep->mmapbuf = mmap(0, handlep->mmapbuflen, PROT_READ,
     MAP_SHARED, handle->fd, 0);
 return handlep->mmapbuf != MAP_FAILED;
}
