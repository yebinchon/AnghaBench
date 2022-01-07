
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct pcap_win {int * adapter; } ;
struct TYPE_5__ {int errbuf; struct pcap_win* priv; } ;
typedef TYPE_1__ pcap_t ;
struct TYPE_6__ {int len; int buffer; } ;
typedef TYPE_2__ pcap_send_queue ;
typedef int BOOLEAN ;


 int GetLastError () ;
 int PCAP_ERRBUF_SIZE ;
 int PacketSendPackets (int *,int ,int ,int ) ;
 int pcap_snprintf (int ,int ,char*,...) ;
 int pcap_win32_err_to_str (int ,char*) ;

__attribute__((used)) static u_int
pcap_sendqueue_transmit_npf(pcap_t *p, pcap_send_queue *queue, int sync)
{
 struct pcap_win *pw = p->priv;
 u_int res;
 char errbuf[PCAP_ERRBUF_SIZE+1];

 if (pw->adapter==((void*)0)) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "Cannot transmit a queue to an offline capture or to a TurboCap port");
  return (0);
 }

 res = PacketSendPackets(pw->adapter,
  queue->buffer,
  queue->len,
  (BOOLEAN)sync);

 if(res != queue->len){
  pcap_win32_err_to_str(GetLastError(), errbuf);
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "Error opening adapter: %s", errbuf);
 }

 return (res);
}
