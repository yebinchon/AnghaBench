
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcap_pkthdr {int caplen; } ;
struct l2_packet_data {int rx_callback_ctx; int (* rx_callback ) (int ,int ,unsigned char*,size_t) ;scalar_t__ l2_hdr; } ;
struct l2_ethhdr {int h_source; } ;
typedef int pcap_t ;


 int * pcap_next (int *,struct pcap_pkthdr*) ;
 int stub1 (int ,int ,unsigned char*,size_t) ;

__attribute__((used)) static void l2_packet_receive(int sock, void *eloop_ctx, void *sock_ctx)
{
 struct l2_packet_data *l2 = eloop_ctx;
 pcap_t *pcap = sock_ctx;
 struct pcap_pkthdr hdr;
 const u_char *packet;
 struct l2_ethhdr *ethhdr;
 unsigned char *buf;
 size_t len;

 packet = pcap_next(pcap, &hdr);

 if (packet == ((void*)0) || hdr.caplen < sizeof(*ethhdr))
  return;

 ethhdr = (struct l2_ethhdr *) packet;
 if (l2->l2_hdr) {
  buf = (unsigned char *) ethhdr;
  len = hdr.caplen;
 } else {
  buf = (unsigned char *) (ethhdr + 1);
  len = hdr.caplen - sizeof(*ethhdr);
 }
 l2->rx_callback(l2->rx_callback_ctx, ethhdr->h_source, buf, len);
}
