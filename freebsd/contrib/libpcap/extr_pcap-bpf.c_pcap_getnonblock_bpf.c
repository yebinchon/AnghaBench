
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_bpf {int nonblock; scalar_t__ zerocopy; } ;
struct TYPE_4__ {struct pcap_bpf* priv; } ;
typedef TYPE_1__ pcap_t ;


 int pcap_getnonblock_fd (TYPE_1__*) ;

__attribute__((used)) static int
pcap_getnonblock_bpf(pcap_t *p)
{






 return (pcap_getnonblock_fd(p));
}
