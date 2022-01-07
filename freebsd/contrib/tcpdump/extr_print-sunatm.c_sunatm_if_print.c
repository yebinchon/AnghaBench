
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_short ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct pcap_pkthdr {scalar_t__ caplen; scalar_t__ len; } ;
struct TYPE_5__ {scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ ATM_LANE ;
 scalar_t__ ATM_LLC ;
 scalar_t__ ATM_UNKNOWN ;
 size_t DIR_POS ;
 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ PKT_BEGIN_POS ;


 size_t VCI_POS ;
 size_t VPI_POS ;
 int atm_print (TYPE_1__*,int,int ,scalar_t__,int const*,scalar_t__,scalar_t__) ;

u_int
sunatm_if_print(netdissect_options *ndo,
                const struct pcap_pkthdr *h, const u_char *p)
{
 u_int caplen = h->caplen;
 u_int length = h->len;
 u_short vci;
 u_char vpi;
 u_int traftype;

 if (caplen < PKT_BEGIN_POS) {
  ND_PRINT((ndo, "[|atm]"));
  return (caplen);
 }

 if (ndo->ndo_eflag) {
  ND_PRINT((ndo, p[DIR_POS] & 0x80 ? "Tx: " : "Rx: "));
 }

 switch (p[DIR_POS] & 0x0f) {

 case 129:
  traftype = ATM_LANE;
  break;

 case 128:
  traftype = ATM_LLC;
  break;

 default:
  traftype = ATM_UNKNOWN;
  break;
 }

 vci = EXTRACT_16BITS(&p[VCI_POS]);
 vpi = p[VPI_POS];

 p += PKT_BEGIN_POS;
 caplen -= PKT_BEGIN_POS;
 length -= PKT_BEGIN_POS;
 atm_print(ndo, vpi, vci, traftype, p, length, caplen);

 return (PKT_BEGIN_POS);
}
