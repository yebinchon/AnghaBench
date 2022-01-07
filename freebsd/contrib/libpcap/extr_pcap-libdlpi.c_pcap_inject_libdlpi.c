
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_dlpi {int dlpi_hd; } ;
struct TYPE_3__ {int errbuf; struct pcap_dlpi* priv; } ;
typedef TYPE_1__ pcap_t ;


 int DLPI_SUCCESS ;
 int dlpi_linkname (int ) ;
 int dlpi_send (int ,int *,int ,void const*,size_t,int *) ;
 int pcap_libdlpi_err (int ,char*,int,int ) ;

__attribute__((used)) static int
pcap_inject_libdlpi(pcap_t *p, const void *buf, size_t size)
{
 struct pcap_dlpi *pd = p->priv;
 int retv;

 retv = dlpi_send(pd->dlpi_hd, ((void*)0), 0, buf, size, ((void*)0));
 if (retv != DLPI_SUCCESS) {
  pcap_libdlpi_err(dlpi_linkname(pd->dlpi_hd), "dlpi_send", retv,
      p->errbuf);
  return (-1);
 }





 return (size);
}
