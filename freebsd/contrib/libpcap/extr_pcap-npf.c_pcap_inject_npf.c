
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_win {int adapter; } ;
struct TYPE_3__ {int errbuf; struct pcap_win* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int PVOID ;
typedef int PACKET ;


 scalar_t__ FALSE ;
 int PCAP_ERRBUF_SIZE ;
 int PacketInitPacket (int *,int ,size_t) ;
 scalar_t__ PacketSendPacket (int ,int *,int ) ;
 int TRUE ;
 int pcap_snprintf (int ,int ,char*) ;

__attribute__((used)) static int
pcap_inject_npf(pcap_t *p, const void *buf, size_t size)
{
 struct pcap_win *pw = p->priv;
 PACKET pkt;

 PacketInitPacket(&pkt, (PVOID)buf, size);
 if(PacketSendPacket(pw->adapter,&pkt,TRUE) == FALSE) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "send error: PacketSendPacket failed");
  return (-1);
 }






 return ((int)size);
}
