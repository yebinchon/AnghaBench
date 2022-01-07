
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcap_pkthdr {int dummy; } ;
typedef int netdissect_options ;


 int info (int ) ;
 int infodelay ;
 scalar_t__ infoprint ;
 int packets_captured ;
 int pretty_print_packet (int *,struct pcap_pkthdr const*,int const*,int ) ;

__attribute__((used)) static void
print_packet(u_char *user, const struct pcap_pkthdr *h, const u_char *sp)
{
 ++packets_captured;

 ++infodelay;

 pretty_print_packet((netdissect_options *)user, h, sp, packets_captured);

 --infodelay;
 if (infoprint)
  info(0);
}
