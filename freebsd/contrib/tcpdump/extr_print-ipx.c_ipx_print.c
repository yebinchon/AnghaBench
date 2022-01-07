
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct ipxHdr {int length; int dstSkt; int dstNode; int dstNet; int srcSkt; int srcNode; int srcNet; } ;
struct TYPE_5__ {int ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 int EXTRACT_32BITS (int ) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int ) ;
 int ipxSize ;
 int ipx_decode (TYPE_1__*,struct ipxHdr const*,int const*,int) ;
 int ipxaddr_string (int ,int ) ;

void
ipx_print(netdissect_options *ndo, const u_char *p, u_int length)
{
 const struct ipxHdr *ipx = (const struct ipxHdr *)p;

 if (!ndo->ndo_eflag)
  ND_PRINT((ndo, "IPX "));

 ND_TCHECK(ipx->srcSkt);
 ND_PRINT((ndo, "%s.%04x > ",
       ipxaddr_string(EXTRACT_32BITS(ipx->srcNet), ipx->srcNode),
       EXTRACT_16BITS(&ipx->srcSkt)));

 ND_PRINT((ndo, "%s.%04x: ",
       ipxaddr_string(EXTRACT_32BITS(ipx->dstNet), ipx->dstNode),
       EXTRACT_16BITS(&ipx->dstSkt)));


 ND_TCHECK(ipx->length);
 length = EXTRACT_16BITS(&ipx->length);

 ipx_decode(ndo, ipx, p + ipxSize, length - ipxSize);
 return;
trunc:
 ND_PRINT((ndo, "[|ipx %d]", length));
}
