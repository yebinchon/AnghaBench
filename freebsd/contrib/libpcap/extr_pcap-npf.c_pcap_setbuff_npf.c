
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_win {int adapter; } ;
struct TYPE_3__ {int errbuf; struct pcap_win* priv; } ;
typedef TYPE_1__ pcap_t ;


 scalar_t__ FALSE ;
 int PCAP_ERRBUF_SIZE ;
 scalar_t__ PacketSetBuff (int ,int) ;
 int pcap_snprintf (int ,int ,char*) ;

__attribute__((used)) static int
pcap_setbuff_npf(pcap_t *p, int dim)
{
 struct pcap_win *pw = p->priv;

 if(PacketSetBuff(pw->adapter,dim)==FALSE)
 {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "driver error: not enough memory to allocate the kernel buffer");
  return (-1);
 }
 return (0);
}
