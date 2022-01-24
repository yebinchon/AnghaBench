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
 int const FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int FALSE ; 
#define  LLDP_PRIVATE_8023_SUBTYPE_LINKAGGR 131 
#define  LLDP_PRIVATE_8023_SUBTYPE_MACPHY 130 
#define  LLDP_PRIVATE_8023_SUBTYPE_MDIPOWER 129 
#define  LLDP_PRIVATE_8023_SUBTYPE_MTU 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  lldp_8023_autonegotiation_values ; 
 int /*<<< orphan*/  lldp_8023_subtype_values ; 
 int /*<<< orphan*/  lldp_aggregation_values ; 
 int /*<<< orphan*/  lldp_mau_types_values ; 
 int /*<<< orphan*/  lldp_mdi_power_class_values ; 
 int /*<<< orphan*/  lldp_mdi_power_pairs_values ; 
 int /*<<< orphan*/  lldp_mdi_values ; 
 int /*<<< orphan*/  lldp_pmd_capability_values ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int const) ; 

__attribute__((used)) static int
FUNC5(netdissect_options *ndo,
                        const u_char *tptr, u_int tlv_len)
{
    int subtype, hexdump = FALSE;

    if (tlv_len < 4) {
        return hexdump;
    }
    subtype = *(tptr+3);

    FUNC2((ndo, "\n\t  %s Subtype (%u)",
           FUNC4(lldp_8023_subtype_values, "unknown", subtype),
           subtype));

    switch (subtype) {
    case LLDP_PRIVATE_8023_SUBTYPE_MACPHY:
        if (tlv_len < 9) {
            return hexdump;
        }
        FUNC2((ndo, "\n\t    autonegotiation [%s] (0x%02x)",
               FUNC3(lldp_8023_autonegotiation_values, "none", *(tptr+4)),
               *(tptr + 4)));
        FUNC2((ndo, "\n\t    PMD autoneg capability [%s] (0x%04x)",
               FUNC3(lldp_pmd_capability_values,"unknown", FUNC0(tptr+5)),
               FUNC0(tptr + 5)));
        FUNC2((ndo, "\n\t    MAU type %s (0x%04x)",
               FUNC4(lldp_mau_types_values, "unknown", FUNC0(tptr+7)),
               FUNC0(tptr + 7)));
        break;

    case LLDP_PRIVATE_8023_SUBTYPE_MDIPOWER:
        if (tlv_len < 7) {
            return hexdump;
        }
        FUNC2((ndo, "\n\t    MDI power support [%s], power pair %s, power class %s",
               FUNC3(lldp_mdi_values, "none", *(tptr+4)),
               FUNC4(lldp_mdi_power_pairs_values, "unknown", *(tptr+5)),
               FUNC4(lldp_mdi_power_class_values, "unknown", *(tptr + 6))));
        break;

    case LLDP_PRIVATE_8023_SUBTYPE_LINKAGGR:
        if (tlv_len < 9) {
            return hexdump;
        }
        FUNC2((ndo, "\n\t    aggregation status [%s], aggregation port ID %u",
               FUNC3(lldp_aggregation_values, "none", *(tptr+4)),
               FUNC1(tptr + 5)));
        break;

    case LLDP_PRIVATE_8023_SUBTYPE_MTU:
        if (tlv_len < 6) {
            return hexdump;
        }
        FUNC2((ndo, "\n\t    MTU size %u", FUNC0(tptr + 4)));
        break;

    default:
        hexdump = TRUE;
        break;
    }

    return hexdump;
}