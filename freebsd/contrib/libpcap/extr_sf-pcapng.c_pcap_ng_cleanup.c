
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_ng_sf {int ifaces; } ;
struct TYPE_4__ {struct pcap_ng_sf* priv; } ;
typedef TYPE_1__ pcap_t ;


 int free (int ) ;
 int sf_cleanup (TYPE_1__*) ;

__attribute__((used)) static void
pcap_ng_cleanup(pcap_t *p)
{
 struct pcap_ng_sf *ps = p->priv;

 free(ps->ifaces);
 sf_cleanup(p);
}
