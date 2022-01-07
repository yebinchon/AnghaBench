
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tv_usec; int tv_sec; } ;
typedef struct pcap_sf_pkthdr {int caplen; int len; TYPE_1__ ts; } const pcap_sf_pkthdr ;
typedef struct pcap_sf_pkthdr u_char ;
struct TYPE_4__ {int tv_usec; int tv_sec; } ;
struct pcap_pkthdr {int caplen; int len; TYPE_2__ ts; } ;
typedef int sf_hdr ;
typedef int FILE ;


 int fwrite (struct pcap_sf_pkthdr const*,int,int,int *) ;

void
pcap_dump(u_char *user, const struct pcap_pkthdr *h, const u_char *sp)
{
 register FILE *f;
 struct pcap_sf_pkthdr sf_hdr;

 f = (FILE *)user;
 sf_hdr.ts.tv_sec = h->ts.tv_sec;
 sf_hdr.ts.tv_usec = h->ts.tv_usec;
 sf_hdr.caplen = h->caplen;
 sf_hdr.len = h->len;

 (void)fwrite(&sf_hdr, sizeof(sf_hdr), 1, f);
 (void)fwrite(sp, h->caplen, 1, f);
}
