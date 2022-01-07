
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct TYPE_5__ {int ndo_vflag; scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;



 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int GRE_AP ;
 int GRE_KP ;
 int GRE_SP ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 int bittok2str (int ,char*,int) ;
 int ethertype_values ;
 int gre_flag_values ;
 int ppp_print (TYPE_1__*,int const*,int) ;
 int tok2str (int ,char*,int) ;
 int tstr ;

__attribute__((used)) static void
gre_print_1(netdissect_options *ndo, const u_char *bp, u_int length)
{
 u_int len = length;
 uint16_t flags, prot;

 flags = EXTRACT_16BITS(bp);
 len -= 2;
 bp += 2;

 if (ndo->ndo_vflag)
            ND_PRINT((ndo, ", Flags [%s]",
                   bittok2str(gre_flag_values,"none",flags)));

 ND_TCHECK2(*bp, 2);
 if (len < 2)
  goto trunc;
 prot = EXTRACT_16BITS(bp);
 len -= 2;
 bp += 2;


 if (flags & GRE_KP) {
  uint32_t k;

  ND_TCHECK2(*bp, 4);
  if (len < 4)
   goto trunc;
  k = EXTRACT_32BITS(bp);
  ND_PRINT((ndo, ", call %d", k & 0xffff));
  len -= 4;
  bp += 4;
 }

 if (flags & GRE_SP) {
  ND_TCHECK2(*bp, 4);
  if (len < 4)
   goto trunc;
  ND_PRINT((ndo, ", seq %u", EXTRACT_32BITS(bp)));
  bp += 4;
  len -= 4;
 }

 if (flags & GRE_AP) {
  ND_TCHECK2(*bp, 4);
  if (len < 4)
   goto trunc;
  ND_PRINT((ndo, ", ack %u", EXTRACT_32BITS(bp)));
  bp += 4;
  len -= 4;
 }

 if ((flags & GRE_SP) == 0)
  ND_PRINT((ndo, ", no-payload"));

        if (ndo->ndo_eflag)
            ND_PRINT((ndo, ", proto %s (0x%04x)",
                   tok2str(ethertype_values,"unknown",prot),
                   prot));

        ND_PRINT((ndo, ", length %u",length));

        if ((flags & GRE_SP) == 0)
            return;

        if (ndo->ndo_vflag < 1)
            ND_PRINT((ndo, ": "));
        else
            ND_PRINT((ndo, "\n\t"));

 switch (prot) {
 case 128:
  ppp_print(ndo, bp, len);
  break;
 default:
  ND_PRINT((ndo, "gre-proto-0x%x", prot));
  break;
 }
 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
