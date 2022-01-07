
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_snf {int snf_handle; int snf_ring; scalar_t__ snf_inj; } ;
struct TYPE_4__ {struct pcap_snf* priv; } ;
typedef TYPE_1__ pcap_t ;


 int pcap_cleanup_live_common (TYPE_1__*) ;
 int snf_close (int ) ;
 int snf_inject_close (scalar_t__) ;
 int snf_ring_close (int ) ;

__attribute__((used)) static void
snf_platform_cleanup(pcap_t *p)
{
 struct pcap_snf *ps = p->priv;





 snf_ring_close(ps->snf_ring);
 snf_close(ps->snf_handle);
 pcap_cleanup_live_common(p);
}
