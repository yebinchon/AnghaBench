
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_usb_linux {int * mmapbuf; int mmapbuflen; } ;
struct TYPE_4__ {struct pcap_usb_linux* priv; } ;
typedef TYPE_1__ pcap_t ;


 int munmap (int *,int ) ;
 int pcap_cleanup_live_common (TYPE_1__*) ;

__attribute__((used)) static void
usb_cleanup_linux_mmap(pcap_t* handle)
{
 struct pcap_usb_linux *handlep = handle->priv;


 if (handlep->mmapbuf != ((void*)0)) {
  munmap(handlep->mmapbuf, handlep->mmapbuflen);
  handlep->mmapbuf = ((void*)0);
 }
 pcap_cleanup_live_common(handle);
}
