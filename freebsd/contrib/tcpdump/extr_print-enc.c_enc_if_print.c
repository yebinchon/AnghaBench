
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct pcap_pkthdr {scalar_t__ len; scalar_t__ caplen; } ;
struct enchdr {int flags; int af; int spi; } ;
typedef int netdissect_options ;




 scalar_t__ ENC_HDRLEN ;
 int ENC_PRINT_TYPE (int,int ,char*) ;
 int EXTRACT_32BITS (int *) ;
 int M_AUTH ;
 int M_CONF ;
 int ND_PRINT (int *) ;
 int ip6_print (int *,int const*,scalar_t__) ;
 int ip_print (int *,int const*,scalar_t__) ;

u_int
enc_if_print(netdissect_options *ndo,
             const struct pcap_pkthdr *h, register const u_char *p)
{
 register u_int length = h->len;
 register u_int caplen = h->caplen;
 int flags;
 const struct enchdr *hdr;

 if (caplen < ENC_HDRLEN) {
  ND_PRINT((ndo, "[|enc]"));
  goto out;
 }

 hdr = (const struct enchdr *)p;
 flags = hdr->flags;
 if (flags == 0)
  ND_PRINT((ndo, "(unprotected): "));
 else
  ND_PRINT((ndo, "("));
 ENC_PRINT_TYPE(flags, M_AUTH, "authentic");
 ENC_PRINT_TYPE(flags, M_CONF, "confidential");

 ND_PRINT((ndo, "SPI 0x%08x: ", EXTRACT_32BITS(&hdr->spi)));

 length -= ENC_HDRLEN;
 caplen -= ENC_HDRLEN;
 p += ENC_HDRLEN;

 switch (hdr->af) {
 case 129:
  ip_print(ndo, p, length);
  break;

 case 128:
  ip6_print(ndo, p, length);
  break;

 }

out:
 return (ENC_HDRLEN);
}
