
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct pcap_pkthdr {int len; int caplen; } ;
struct TYPE_6__ {int ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;




 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;

 int chdlc_if_print (TYPE_1__*,struct pcap_pkthdr const*,int const*) ;
 int handle_ppp (TYPE_1__*,int,int const*,int) ;
 int ppptype2str ;
 int tok2str (int ,char*,int) ;

u_int
ppp_hdlc_if_print(netdissect_options *ndo,
                  const struct pcap_pkthdr *h, register const u_char *p)
{
 register u_int length = h->len;
 register u_int caplen = h->caplen;
 u_int proto;
 u_int hdrlen = 0;

 if (caplen < 2) {
  ND_PRINT((ndo, "[|ppp]"));
  return (caplen);
 }

 switch (p[0]) {

 case 128:
  if (caplen < 4) {
   ND_PRINT((ndo, "[|ppp]"));
   return (caplen);
  }

  if (ndo->ndo_eflag)
   ND_PRINT((ndo, "%02x %02x %d ", p[0], p[1], length));
  p += 2;
  length -= 2;
  hdrlen += 2;

  proto = EXTRACT_16BITS(p);
  p += 2;
  length -= 2;
  hdrlen += 2;
  ND_PRINT((ndo, "%s: ", tok2str(ppptype2str, "unknown PPP protocol (0x%04x)", proto)));

  handle_ppp(ndo, proto, p, length);
  break;

 case 129:
 case 130:
  return (chdlc_if_print(ndo, h, p));

 default:
  if (caplen < 4) {
   ND_PRINT((ndo, "[|ppp]"));
   return (caplen);
  }

  if (ndo->ndo_eflag)
   ND_PRINT((ndo, "%02x %02x %d ", p[0], p[1], length));
  p += 2;
  hdrlen += 2;






  ND_PRINT((ndo, "unknown addr %02x; ctrl %02x", p[0], p[1]));
  break;
 }

 return (hdrlen);
}
