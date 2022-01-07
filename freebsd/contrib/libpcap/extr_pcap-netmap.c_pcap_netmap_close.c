
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct pcap_netmap {scalar_t__ must_clear_promisc; struct nm_desc* d; } ;
struct nm_desc {int dummy; } ;
struct TYPE_5__ {struct pcap_netmap* priv; } ;
typedef TYPE_1__ pcap_t ;


 int IFF_PPROMISC ;
 int SIOCGIFFLAGS ;
 int SIOCSIFFLAGS ;
 int nm_close (struct nm_desc*) ;
 int pcap_cleanup_live_common (TYPE_1__*) ;
 int pcap_netmap_ioctl (TYPE_1__*,int ,int*) ;

__attribute__((used)) static void
pcap_netmap_close(pcap_t *p)
{
 struct pcap_netmap *pn = p->priv;
 struct nm_desc *d = pn->d;
 uint32_t if_flags = 0;

 if (pn->must_clear_promisc) {
  pcap_netmap_ioctl(p, SIOCGIFFLAGS, &if_flags);
  if (if_flags & IFF_PPROMISC) {
   if_flags &= ~IFF_PPROMISC;
   pcap_netmap_ioctl(p, SIOCSIFFLAGS, &if_flags);
  }
 }
 nm_close(d);
 pcap_cleanup_live_common(p);
}
