
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcap_pkthdr {int dummy; } ;
typedef int pcap_dumper_t ;


 scalar_t__ Uflag ;
 int info (int ) ;
 int infodelay ;
 scalar_t__ infoprint ;
 int packets_captured ;
 int pcap_dump (int *,struct pcap_pkthdr const*,int const*) ;
 int pcap_dump_flush (int *) ;

__attribute__((used)) static void
dump_packet(u_char *user, const struct pcap_pkthdr *h, const u_char *sp)
{
 ++packets_captured;

 ++infodelay;

 pcap_dump(user, h, sp);





 --infodelay;
 if (infoprint)
  info(0);
}
