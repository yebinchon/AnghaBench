
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct pcap_pkthdr {int caplen; } ;
struct TYPE_5__ {int ndo_suppress_default_print; scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_LE_16BITS (int const*) ;
 int EXTRACT_LE_8BITS (int const*) ;




 int FC_DEST_ADDRESSING_MODE (int) ;
 size_t FC_FRAME_TYPE (int) ;
 int FC_PAN_ID_COMPRESSION ;
 int FC_SRC_ADDRESSING_MODE (int) ;
 int ND_DEFAULTPRINT (int const*,int) ;
 int ND_PRINT (TYPE_1__*) ;
 int * ftypes ;
 int le64addr_string (TYPE_1__*,int const*) ;

u_int
ieee802_15_4_if_print(netdissect_options *ndo,
                      const struct pcap_pkthdr *h, const u_char *p)
{
 u_int caplen = h->caplen;
 u_int hdrlen;
 uint16_t fc;
 uint8_t seq;
 uint16_t panid = 0;

 if (caplen < 3) {
  ND_PRINT((ndo, "[|802.15.4]"));
  return caplen;
 }
 hdrlen = 3;

 fc = EXTRACT_LE_16BITS(p);
 seq = EXTRACT_LE_8BITS(p + 2);

 p += 3;
 caplen -= 3;

 ND_PRINT((ndo,"IEEE 802.15.4 %s packet ", ftypes[FC_FRAME_TYPE(fc)]));
 if (ndo->ndo_vflag)
  ND_PRINT((ndo,"seq %02x ", seq));




 switch (FC_DEST_ADDRESSING_MODE(fc)) {
 case 130:
  if (fc & FC_PAN_ID_COMPRESSION) {





   ND_PRINT((ndo, "[|802.15.4]"));
   return hdrlen;
  }
  if (ndo->ndo_vflag)
   ND_PRINT((ndo,"none "));
  break;
 case 129:
  if (ndo->ndo_vflag)
   ND_PRINT((ndo,"reserved destination addressing mode"));
  return hdrlen;
 case 128:
  if (caplen < 2) {
   ND_PRINT((ndo, "[|802.15.4]"));
   return hdrlen;
  }
  panid = EXTRACT_LE_16BITS(p);
  p += 2;
  caplen -= 2;
  hdrlen += 2;
  if (caplen < 2) {
   ND_PRINT((ndo, "[|802.15.4]"));
   return hdrlen;
  }
  if (ndo->ndo_vflag)
   ND_PRINT((ndo,"%04x:%04x ", panid, EXTRACT_LE_16BITS(p)));
  p += 2;
  caplen -= 2;
  hdrlen += 2;
  break;
 case 131:
  if (caplen < 2) {
   ND_PRINT((ndo, "[|802.15.4]"));
   return hdrlen;
  }
  panid = EXTRACT_LE_16BITS(p);
  p += 2;
  caplen -= 2;
  hdrlen += 2;
  if (caplen < 8) {
   ND_PRINT((ndo, "[|802.15.4]"));
   return hdrlen;
  }
  if (ndo->ndo_vflag)
   ND_PRINT((ndo,"%04x:%s ", panid, le64addr_string(ndo, p)));
  p += 8;
  caplen -= 8;
  hdrlen += 8;
  break;
 }
 if (ndo->ndo_vflag)
  ND_PRINT((ndo,"< "));




 switch (FC_SRC_ADDRESSING_MODE(fc)) {
 case 130:
  if (ndo->ndo_vflag)
   ND_PRINT((ndo,"none "));
  break;
 case 129:
  if (ndo->ndo_vflag)
   ND_PRINT((ndo,"reserved source addressing mode"));
  return 0;
 case 128:
  if (!(fc & FC_PAN_ID_COMPRESSION)) {





   if (caplen < 2) {
    ND_PRINT((ndo, "[|802.15.4]"));
    return hdrlen;
   }
   panid = EXTRACT_LE_16BITS(p);
   p += 2;
   caplen -= 2;
   hdrlen += 2;
  }
  if (caplen < 2) {
   ND_PRINT((ndo, "[|802.15.4]"));
   return hdrlen;
  }
  if (ndo->ndo_vflag)
   ND_PRINT((ndo,"%04x:%04x ", panid, EXTRACT_LE_16BITS(p)));
  p += 2;
  caplen -= 2;
  hdrlen += 2;
  break;
 case 131:
  if (!(fc & FC_PAN_ID_COMPRESSION)) {





   if (caplen < 2) {
    ND_PRINT((ndo, "[|802.15.4]"));
    return hdrlen;
   }
   panid = EXTRACT_LE_16BITS(p);
   p += 2;
   caplen -= 2;
   hdrlen += 2;
  }
  if (caplen < 8) {
   ND_PRINT((ndo, "[|802.15.4]"));
   return hdrlen;
  }
  if (ndo->ndo_vflag)
   ND_PRINT((ndo,"%04x:%s ", panid, le64addr_string(ndo, p)));
  p += 8;
  caplen -= 8;
  hdrlen += 8;
  break;
 }

 if (!ndo->ndo_suppress_default_print)
  ND_DEFAULTPRINT(p, caplen);

 return hdrlen;
}
