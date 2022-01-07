
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_snf {scalar_t__ snf_timeout; } ;
struct TYPE_3__ {struct pcap_snf* priv; } ;
typedef TYPE_1__ pcap_t ;



__attribute__((used)) static int
snf_getnonblock(pcap_t *p)
{
 struct pcap_snf *ps = p->priv;

 return (ps->snf_timeout == 0);
}
