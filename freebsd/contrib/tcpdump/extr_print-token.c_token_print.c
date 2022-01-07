
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct token_header {int * token_rseg; int token_rcf; } ;
struct lladdr_info {int* addr; void* addr_string; } ;
struct ether_header {int dummy; } ;
struct TYPE_6__ {int ndo_suppress_default_print; scalar_t__ ndo_eflag; scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int BRIDGE_NUMBER (struct token_header const*,int) ;
 size_t BROADCAST (struct token_header const*) ;
 size_t DIRECTION (struct token_header const*) ;
 int* EDST (struct ether_header*) ;
 int* ESRC (struct ether_header*) ;
 int EXTRACT_16BITS (int *) ;
 scalar_t__ FRAME_TYPE (struct token_header const*) ;
 scalar_t__ IS_SOURCE_ROUTED (struct token_header const*) ;
 size_t LARGEST_FRAME (struct token_header const*) ;
 int ND_DEFAULTPRINT (int const*,scalar_t__) ;
 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ RIF_LENGTH (struct token_header const*) ;
 int RING_NUMBER (struct token_header const*,int) ;
 int SEGMENT_COUNT (struct token_header const*) ;
 scalar_t__ TOKEN_FC_LLC ;
 scalar_t__ TOKEN_HDRLEN ;
 int * broadcast_indicator ;
 int * direction ;
 void* etheraddr_string ;
 int extract_token_addrs (struct token_header const*,char*,char*) ;
 int * largest_frame ;
 int llc_print (TYPE_1__*,int const*,scalar_t__,scalar_t__,struct lladdr_info*,struct lladdr_info*) ;
 int token_hdr_print (TYPE_1__*,struct token_header const*,scalar_t__,int*,int*) ;
 int tstr ;

u_int
token_print(netdissect_options *ndo, const u_char *p, u_int length, u_int caplen)
{
 const struct token_header *trp;
 int llc_hdrlen;
 struct ether_header ehdr;
 struct lladdr_info src, dst;
 u_int route_len = 0, hdr_len = TOKEN_HDRLEN;
 int seg;

 trp = (const struct token_header *)p;

 if (caplen < TOKEN_HDRLEN) {
  ND_PRINT((ndo, "%s", tstr));
  return hdr_len;
 }




 extract_token_addrs(trp, (char*)ESRC(&ehdr), (char*)EDST(&ehdr));


 if (IS_SOURCE_ROUTED(trp)) {

  *ESRC(&ehdr) &= 0x7f;

  if (ndo->ndo_eflag)
   token_hdr_print(ndo, trp, length, ESRC(&ehdr), EDST(&ehdr));

  if (caplen < TOKEN_HDRLEN + 2) {
   ND_PRINT((ndo, "%s", tstr));
   return hdr_len;
  }
  route_len = RIF_LENGTH(trp);
  hdr_len += route_len;
  if (caplen < hdr_len) {
   ND_PRINT((ndo, "%s", tstr));
   return hdr_len;
  }
  if (ndo->ndo_vflag) {
   ND_PRINT((ndo, "%s ", broadcast_indicator[BROADCAST(trp)]));
   ND_PRINT((ndo, "%s", direction[DIRECTION(trp)]));

   for (seg = 0; seg < SEGMENT_COUNT(trp); seg++)
    ND_PRINT((ndo, " [%d:%d]", RING_NUMBER(trp, seg),
        BRIDGE_NUMBER(trp, seg)));
  } else {
   ND_PRINT((ndo, "rt = %x", EXTRACT_16BITS(&trp->token_rcf)));

   for (seg = 0; seg < SEGMENT_COUNT(trp); seg++)
    ND_PRINT((ndo, ":%x", EXTRACT_16BITS(&trp->token_rseg[seg])));
  }
  ND_PRINT((ndo, " (%s) ", largest_frame[LARGEST_FRAME(trp)]));
 } else {
  if (ndo->ndo_eflag)
   token_hdr_print(ndo, trp, length, ESRC(&ehdr), EDST(&ehdr));
 }

 src.addr = ESRC(&ehdr);
 src.addr_string = etheraddr_string;
 dst.addr = EDST(&ehdr);
 dst.addr_string = etheraddr_string;


 length -= hdr_len;
 p += hdr_len;
 caplen -= hdr_len;


 if (FRAME_TYPE(trp) == TOKEN_FC_LLC) {

  llc_hdrlen = llc_print(ndo, p, length, caplen, &src, &dst);
  if (llc_hdrlen < 0) {

   if (!ndo->ndo_suppress_default_print)
    ND_DEFAULTPRINT(p, caplen);
   llc_hdrlen = -llc_hdrlen;
  }
  hdr_len += llc_hdrlen;
 } else {


  if (!ndo->ndo_eflag)
   token_hdr_print(ndo, trp, length + TOKEN_HDRLEN + route_len,
       ESRC(&ehdr), EDST(&ehdr));
  if (!ndo->ndo_suppress_default_print)
   ND_DEFAULTPRINT(p, caplen);
 }
 return (hdr_len);
}
