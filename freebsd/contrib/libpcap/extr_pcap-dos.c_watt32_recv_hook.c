
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcap_pkthdr {int caplen; } ;
struct ether_header {int ether_type; } ;


 int ARGSUSED (int *) ;
 int etype ;
 int memcpy (int ,int const*,int ) ;
 int rxbuf ;

__attribute__((used)) static void watt32_recv_hook (u_char *dummy, const struct pcap_pkthdr *pcap,
                              const u_char *buf)
{

  struct ether_header *ep = (struct ether_header*) buf;

  memcpy (rxbuf, buf, pcap->caplen);
  etype = ep->ether_type;
  ARGSUSED (dummy);
}
