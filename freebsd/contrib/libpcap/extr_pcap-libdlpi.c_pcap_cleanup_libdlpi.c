
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_dlpi {int * dlpi_hd; } ;
struct TYPE_4__ {int fd; struct pcap_dlpi* priv; } ;
typedef TYPE_1__ pcap_t ;


 int dlpi_close (int *) ;
 int pcap_cleanup_live_common (TYPE_1__*) ;

__attribute__((used)) static void
pcap_cleanup_libdlpi(pcap_t *p)
{
 struct pcap_dlpi *pd = p->priv;

 if (pd->dlpi_hd != ((void*)0)) {
  dlpi_close(pd->dlpi_hd);
  pd->dlpi_hd = ((void*)0);
  p->fd = -1;
 }
 pcap_cleanup_live_common(p);
}
