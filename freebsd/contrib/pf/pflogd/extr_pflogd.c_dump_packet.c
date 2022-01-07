
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* tv_usec; void* tv_sec; } ;
typedef struct pcap_sf_pkthdr {int caplen; int len; TYPE_1__ ts; } const pcap_sf_pkthdr ;
typedef struct pcap_sf_pkthdr u_char ;
struct pcap_pkthdr {int caplen; int len; TYPE_1__ ts; } ;
typedef int sh ;
typedef void* bpf_int32 ;
typedef int FILE ;


 int LOG_NOTICE ;
 size_t bufleft ;
 int bufpkt ;
 scalar_t__ bufpos ;
 scalar_t__ cur_snaplen ;
 int dump_packet_nobuf (struct pcap_sf_pkthdr*,struct pcap_sf_pkthdr const*,struct pcap_sf_pkthdr const*) ;
 scalar_t__ flush_buffer (int *) ;
 int logmsg (int ,char*,size_t,scalar_t__,int ) ;
 int memcpy (scalar_t__,struct pcap_sf_pkthdr const*,int) ;
 int packets_dropped ;
 int snaplen ;
 scalar_t__ suspended ;

void
dump_packet(u_char *user, const struct pcap_pkthdr *h, const u_char *sp)
{
 FILE *f = (FILE *)user;




 size_t len = sizeof(*h) + h->caplen;


 if (len < sizeof(*h) || h->caplen > (size_t)cur_snaplen) {
  logmsg(LOG_NOTICE, "invalid size %u (%u/%u), packet dropped",
         len, cur_snaplen, snaplen);
  packets_dropped++;
  return;
 }

 if (len <= bufleft)
  goto append;

 if (suspended) {
  packets_dropped++;
  return;
 }

 if (flush_buffer(f)) {
  packets_dropped++;
  return;
 }

 if (len > bufleft) {
  dump_packet_nobuf(user, h, sp);
  return;
 }

 append:
 memcpy(bufpos, h, sizeof(*h));
 memcpy(bufpos + sizeof(*h), sp, h->caplen);


 bufpos += len;
 bufleft -= len;
 bufpkt++;

 return;
}
