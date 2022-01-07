
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int PPTP_FRAMING_CAP_ASYNC_MASK ;
 int PPTP_FRAMING_CAP_SYNC_MASK ;

__attribute__((used)) static void
pptp_framing_cap_print(netdissect_options *ndo,
                       const uint32_t *framing_cap)
{
 ND_PRINT((ndo, " FRAME_CAP("));
 if (EXTRACT_32BITS(framing_cap) & PPTP_FRAMING_CAP_ASYNC_MASK) {
                ND_PRINT((ndo, "A"));
        }
        if (EXTRACT_32BITS(framing_cap) & PPTP_FRAMING_CAP_SYNC_MASK) {
                ND_PRINT((ndo, "S"));
        }
 ND_PRINT((ndo, ")"));
}
