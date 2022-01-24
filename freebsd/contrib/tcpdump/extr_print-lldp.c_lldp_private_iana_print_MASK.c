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
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FALSE ; 
#define  LLDP_IANA_SUBTYPE_MUDURL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lldp_iana_subtype_values ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC3(netdissect_options *ndo,
                        const u_char *tptr, u_int tlv_len)
{
    int subtype, hexdump = FALSE;

    if (tlv_len < 8) {
        return hexdump;
    }
    subtype = *(tptr+3);

    FUNC0((ndo, "\n\t  %s Subtype (%u)",
           FUNC2(lldp_iana_subtype_values, "unknown", subtype),
           subtype));

    switch (subtype) {
    case LLDP_IANA_SUBTYPE_MUDURL:
        FUNC0((ndo, "\n\t  MUD-URL="));
        (void)FUNC1(ndo, tptr+4, tlv_len-4, NULL);
        break;
    default:
        hexdump=TRUE;
    }

    return hexdump;
}