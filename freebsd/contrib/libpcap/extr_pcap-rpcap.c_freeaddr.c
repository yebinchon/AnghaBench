
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap_addr {struct pcap_addr* dstaddr; struct pcap_addr* broadaddr; struct pcap_addr* netmask; struct pcap_addr* addr; } ;


 int free (struct pcap_addr*) ;

__attribute__((used)) static void
freeaddr(struct pcap_addr *addr)
{
 free(addr->addr);
 free(addr->netmask);
 free(addr->broadaddr);
 free(addr->dstaddr);
 free(addr);
}
