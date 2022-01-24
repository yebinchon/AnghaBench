#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int u_int ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
#define  LS_OPAQUE_GRACE_TLV_INT_ADDRESS 130 
#define  LS_OPAQUE_GRACE_TLV_PERIOD 129 
#define  LS_OPAQUE_GRACE_TLV_REASON 128 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int const*) ; 
 int /*<<< orphan*/  lsa_opaque_grace_tlv_reason_values ; 
 int /*<<< orphan*/  lsa_opaque_grace_tlv_values ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int const) ; 

int
FUNC7(netdissect_options *ndo,
                     const uint8_t *tptr, u_int ls_length)
{
    u_int tlv_type, tlv_length;


    while (ls_length > 0) {
        FUNC3(*tptr, 4);
        if (ls_length < 4) {
            FUNC2((ndo, "\n\t    Remaining LS length %u < 4", ls_length));
            return -1;
        }
        tlv_type = FUNC0(tptr);
        tlv_length = FUNC0(tptr+2);
        tptr+=4;
        ls_length-=4;

        FUNC2((ndo, "\n\t    %s TLV (%u), length %u, value: ",
               FUNC6(lsa_opaque_grace_tlv_values,"unknown",tlv_type),
               tlv_type,
               tlv_length));

        if (tlv_length > ls_length) {
            FUNC2((ndo, "\n\t    Bogus length %u > %u", tlv_length,
                   ls_length));
            return -1;
        }

        /* Infinite loop protection. */
        if (tlv_type == 0 || tlv_length ==0) {
            return -1;
        }

        FUNC3(*tptr, tlv_length);
        switch(tlv_type) {

        case LS_OPAQUE_GRACE_TLV_PERIOD:
            if (tlv_length != 4) {
                FUNC2((ndo, "\n\t    Bogus length %u != 4", tlv_length));
                return -1;
            }
            FUNC2((ndo, "%us", FUNC1(tptr)));
            break;

        case LS_OPAQUE_GRACE_TLV_REASON:
            if (tlv_length != 1) {
                FUNC2((ndo, "\n\t    Bogus length %u != 1", tlv_length));
                return -1;
            }
            FUNC2((ndo, "%s (%u)",
                   FUNC6(lsa_opaque_grace_tlv_reason_values, "Unknown", *tptr),
                   *tptr));
            break;

        case LS_OPAQUE_GRACE_TLV_INT_ADDRESS:
            if (tlv_length != 4) {
                FUNC2((ndo, "\n\t    Bogus length %u != 4", tlv_length));
                return -1;
            }
            FUNC2((ndo, "%s", FUNC4(ndo, tptr)));
            break;

        default:
            if (ndo->ndo_vflag <= 1) {
                if (!FUNC5(ndo, tptr, "\n\t      ", tlv_length))
                    return -1;
            }
            break;

        }
        /* in OSPF everything has to be 32-bit aligned, including TLVs */
        if (tlv_length%4 != 0)
            tlv_length+=4-(tlv_length%4);
        ls_length-=tlv_length;
        tptr+=tlv_length;
    }

    return 0;
trunc:
    return -1;
}