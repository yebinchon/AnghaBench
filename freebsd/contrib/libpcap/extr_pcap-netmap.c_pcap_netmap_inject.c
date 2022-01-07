
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_netmap {struct nm_desc* d; } ;
struct nm_desc {int dummy; } ;
struct TYPE_3__ {struct pcap_netmap* priv; } ;
typedef TYPE_1__ pcap_t ;


 int nm_inject (struct nm_desc*,void const*,size_t) ;

__attribute__((used)) static int
pcap_netmap_inject(pcap_t *p, const void *buf, size_t size)
{
 struct pcap_netmap *pn = p->priv;
 struct nm_desc *d = pn->d;

 return nm_inject(d, buf, size);
}
