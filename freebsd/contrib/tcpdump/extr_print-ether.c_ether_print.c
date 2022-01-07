
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef void* uint16_t ;
typedef scalar_t__ u_short ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct lladdr_info {void* addr_string; int addr; } ;
struct ether_header {int const ether_length_type; } ;
struct TYPE_11__ {int ndo_suppress_default_print; scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EDST (struct ether_header const*) ;
 int ESRC (struct ether_header const*) ;
 scalar_t__ ETHERMTU ;
 scalar_t__ ETHERTYPE_8021Q ;
 scalar_t__ ETHERTYPE_8021Q9100 ;
 scalar_t__ ETHERTYPE_8021Q9200 ;
 scalar_t__ ETHERTYPE_8021QinQ ;
 scalar_t__ ETHERTYPE_JUMBO ;
 scalar_t__ ETHER_HDRLEN ;
 void* EXTRACT_16BITS (int const*) ;
 int ND_DEFAULTPRINT (int const*,scalar_t__) ;
 int ND_PRINT (TYPE_1__*) ;
 int ether_hdr_print (TYPE_1__*,int const*,scalar_t__) ;
 void* etheraddr_string ;
 scalar_t__ ethertype_print (TYPE_1__*,scalar_t__,int const*,scalar_t__,scalar_t__,struct lladdr_info*,struct lladdr_info*) ;
 int ethertype_values ;
 int ieee8021q_tci_string (void*) ;
 int llc_print (TYPE_1__*,int const*,scalar_t__,scalar_t__,struct lladdr_info*,struct lladdr_info*) ;
 void stub1 (TYPE_1__*,int const*) ;
 void stub2 (TYPE_1__*,int const*) ;
 int tok2str (int ,char*,scalar_t__) ;

u_int
ether_print(netdissect_options *ndo,
            const u_char *p, u_int length, u_int caplen,
            void (*print_encap_header)(netdissect_options *ndo, const u_char *), const u_char *encap_header_arg)
{
 const struct ether_header *ep;
 u_int orig_length;
 u_short length_type;
 u_int hdrlen;
 int llc_hdrlen;
 struct lladdr_info src, dst;

 if (caplen < ETHER_HDRLEN) {
  ND_PRINT((ndo, "[|ether]"));
  return (caplen);
 }
 if (length < ETHER_HDRLEN) {
  ND_PRINT((ndo, "[|ether]"));
  return (length);
 }

 if (ndo->ndo_eflag) {
  if (print_encap_header != ((void*)0))
   (*print_encap_header)(ndo, encap_header_arg);
  ether_hdr_print(ndo, p, length);
 }
 orig_length = length;

 length -= ETHER_HDRLEN;
 caplen -= ETHER_HDRLEN;
 ep = (const struct ether_header *)p;
 p += ETHER_HDRLEN;
 hdrlen = ETHER_HDRLEN;

 src.addr = ESRC(ep);
 src.addr_string = etheraddr_string;
 dst.addr = EDST(ep);
 dst.addr_string = etheraddr_string;
 length_type = EXTRACT_16BITS(&ep->ether_length_type);

recurse:



 if (length_type <= ETHERMTU) {

  llc_hdrlen = llc_print(ndo, p, length, caplen, &src, &dst);
  if (llc_hdrlen < 0) {

   if (!ndo->ndo_suppress_default_print)
    ND_DEFAULTPRINT(p, caplen);
   llc_hdrlen = -llc_hdrlen;
  }
  hdrlen += llc_hdrlen;
 } else if (length_type == ETHERTYPE_8021Q ||
                length_type == ETHERTYPE_8021Q9100 ||
                length_type == ETHERTYPE_8021Q9200 ||
                length_type == ETHERTYPE_8021QinQ) {




  if (caplen < 4) {
   ND_PRINT((ndo, "[|vlan]"));
   return (hdrlen + caplen);
  }
  if (length < 4) {
   ND_PRINT((ndo, "[|vlan]"));
   return (hdrlen + length);
  }
         if (ndo->ndo_eflag) {
   uint16_t tag = EXTRACT_16BITS(p);

   ND_PRINT((ndo, "%s, ", ieee8021q_tci_string(tag)));
  }

  length_type = EXTRACT_16BITS(p + 2);
  if (ndo->ndo_eflag && length_type > ETHERMTU)
   ND_PRINT((ndo, "ethertype %s, ", tok2str(ethertype_values,"0x%04x", length_type)));
  p += 4;
  length -= 4;
  caplen -= 4;
  hdrlen += 4;
  goto recurse;
 } else if (length_type == ETHERTYPE_JUMBO) {
  llc_hdrlen = llc_print(ndo, p, length, caplen, &src, &dst);
  if (llc_hdrlen < 0) {

   if (!ndo->ndo_suppress_default_print)
    ND_DEFAULTPRINT(p, caplen);
   llc_hdrlen = -llc_hdrlen;
  }
  hdrlen += llc_hdrlen;
 } else {
  if (ethertype_print(ndo, length_type, p, length, caplen, &src, &dst) == 0) {

   if (!ndo->ndo_eflag) {
    if (print_encap_header != ((void*)0))
     (*print_encap_header)(ndo, encap_header_arg);
    ether_hdr_print(ndo, (const u_char *)ep, orig_length);
   }

   if (!ndo->ndo_suppress_default_print)
    ND_DEFAULTPRINT(p, caplen);
  }
 }
 return (hdrlen);
}
