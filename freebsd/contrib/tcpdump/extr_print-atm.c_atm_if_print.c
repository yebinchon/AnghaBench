
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_int ;
typedef scalar_t__ u_char ;
struct pcap_pkthdr {int caplen; int len; } ;
struct TYPE_6__ {scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ EXTRACT_24BITS (scalar_t__ const*) ;
 int EXTRACT_32BITS (scalar_t__ const*) ;
 int LLCSAP_IP ;
 int LLCSAP_ISONS ;
 int LLCSAP_SNAP ;
 scalar_t__ const LLC_UI ;
 scalar_t__ LLC_UI_HDR (int ) ;
 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ atm_llc_print (TYPE_1__*,scalar_t__ const*,int,int) ;
 int isoclns_print (TYPE_1__*,scalar_t__ const*,int) ;
 int tstr ;

u_int
atm_if_print(netdissect_options *ndo,
             const struct pcap_pkthdr *h, const u_char *p)
{
 u_int caplen = h->caplen;
 u_int length = h->len;
 uint32_t llchdr;
 u_int hdrlen = 0;

 if (caplen < 1 || length < 1) {
  ND_PRINT((ndo, "%s", tstr));
  return (caplen);
 }


        if (*p == LLC_UI) {
            if (ndo->ndo_eflag)
                ND_PRINT((ndo, "CNLPID "));
            isoclns_print(ndo, p + 1, length - 1);
            return hdrlen;
        }





 if (caplen < 3 || length < 3) {
  ND_PRINT((ndo, "%s", tstr));
  return (caplen);
 }
 llchdr = EXTRACT_24BITS(p);
 if (llchdr != LLC_UI_HDR(LLCSAP_SNAP) &&
     llchdr != LLC_UI_HDR(LLCSAP_ISONS) &&
     llchdr != LLC_UI_HDR(LLCSAP_IP)) {
  if (caplen < 20 || length < 20) {
   ND_PRINT((ndo, "%s", tstr));
   return (caplen);
  }
  if (ndo->ndo_eflag)
   ND_PRINT((ndo, "%08x%08x %08x%08x ",
          EXTRACT_32BITS(p),
          EXTRACT_32BITS(p+4),
          EXTRACT_32BITS(p+8),
          EXTRACT_32BITS(p+12)));
  p += 20;
  length -= 20;
  caplen -= 20;
  hdrlen += 20;
 }
 hdrlen += atm_llc_print(ndo, p, length, caplen);
 return (hdrlen);
}
