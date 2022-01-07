
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
 scalar_t__ PacketSetMode (int ,int) ;
 int pcap_snprintf (int ,int ,char*) ;

__attribute__((used)) static int
pcap_setmode_npf(pcap_t *p, int mode)
{
 struct pcap_win *pw = p->priv;

 if(PacketSetMode(pw->adapter,mode)==FALSE)
 {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "driver error: working mode not recognized");
  return (-1);
 }

 return (0);
}
