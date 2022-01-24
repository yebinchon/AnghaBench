#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int const MESSAGE_HELLO ; 
 int const MESSAGE_IHU ; 
#define  MESSAGE_SUB_DIVERSITY 130 
 int MESSAGE_SUB_PAD1 ; 
#define  MESSAGE_SUB_PADN 129 
#define  MESSAGE_SUB_TIMESTAMP 128 
 int const MESSAGE_UPDATE ; 
 int const MESSAGE_UPDATE_SRC_SPECIFIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  diversity_str ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo,
              const u_char *cp, const u_char *ep, const uint8_t tlv_type)
{
    uint8_t subtype, sublen;
    const char *sep;
    uint32_t t1, t2;

    while (cp < ep) {
        subtype = *cp++;
        if(subtype == MESSAGE_SUB_PAD1) {
            FUNC1((ndo, " sub-pad1"));
            continue;
        }
        if(cp == ep)
            goto invalid;
        sublen = *cp++;
        if(cp + sublen > ep)
            goto invalid;

        switch(subtype) {
        case MESSAGE_SUB_PADN:
            FUNC1((ndo, " sub-padn"));
            cp += sublen;
            break;
        case MESSAGE_SUB_DIVERSITY:
            FUNC1((ndo, " sub-diversity"));
            if (sublen == 0) {
                FUNC1((ndo, " empty"));
                break;
            }
            sep = " ";
            while(sublen--) {
                FUNC1((ndo, "%s%s", sep, FUNC3(diversity_str, "%u", *cp++)));
                sep = "-";
            }
            if(tlv_type != MESSAGE_UPDATE &&
               tlv_type != MESSAGE_UPDATE_SRC_SPECIFIC)
                FUNC1((ndo, " (bogus)"));
            break;
        case MESSAGE_SUB_TIMESTAMP:
            FUNC1((ndo, " sub-timestamp"));
            if(tlv_type == MESSAGE_HELLO) {
                if(sublen < 4)
                    goto invalid;
                t1 = FUNC0(cp);
                FUNC1((ndo, " %s", FUNC2(t1)));
            } else if(tlv_type == MESSAGE_IHU) {
                if(sublen < 8)
                    goto invalid;
                t1 = FUNC0(cp);
                FUNC1((ndo, " %s", FUNC2(t1)));
                t2 = FUNC0(cp + 4);
                FUNC1((ndo, "|%s", FUNC2(t2)));
            } else
                FUNC1((ndo, " (bogus)"));
            cp += sublen;
            break;
        default:
            FUNC1((ndo, " sub-unknown-0x%02x", subtype));
            cp += sublen;
        } /* switch */
    } /* while */
    return;

 invalid:
    FUNC1((ndo, "%s", istr));
}