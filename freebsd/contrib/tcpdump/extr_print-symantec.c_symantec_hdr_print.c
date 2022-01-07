
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct symantec_header {int ether_type; } ;
struct TYPE_4__ {int ndo_qflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ ETHERMTU ;
 scalar_t__ EXTRACT_16BITS (int *) ;
 int ND_PRINT (TYPE_1__*) ;
 int ethertype_values ;
 int tok2str (int ,char*,scalar_t__) ;

__attribute__((used)) static inline void
symantec_hdr_print(netdissect_options *ndo, register const u_char *bp, u_int length)
{
 register const struct symantec_header *sp;
 uint16_t etype;

 sp = (const struct symantec_header *)bp;

 etype = EXTRACT_16BITS(&sp->ether_type);
 if (!ndo->ndo_qflag) {
         if (etype <= ETHERMTU)
            ND_PRINT((ndo, "invalid ethertype %u", etype));
                else
            ND_PRINT((ndo, "ethertype %s (0x%04x)",
           tok2str(ethertype_values,"Unknown", etype),
                                       etype));
        } else {
                if (etype <= ETHERMTU)
                          ND_PRINT((ndo, "invalid ethertype %u", etype));
                else
                          ND_PRINT((ndo, "%s", tok2str(ethertype_values,"Unknown Ethertype (0x%04x)", etype)));
        }

 ND_PRINT((ndo, ", length %u: ", length));
}
