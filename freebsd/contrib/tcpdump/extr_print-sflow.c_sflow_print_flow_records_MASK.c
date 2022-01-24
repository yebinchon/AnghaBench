#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct sflow_flow_record_t {int /*<<< orphan*/  length; int /*<<< orphan*/  format; } ;
struct TYPE_8__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sflow_flow_record_t const) ; 
#define  SFLOW_FLOW_ETHERNET_FRAME 143 
#define  SFLOW_FLOW_EXTENDED_GATEWAY_DATA 142 
#define  SFLOW_FLOW_EXTENDED_MPLS_DATA 141 
#define  SFLOW_FLOW_EXTENDED_MPLS_FEC 140 
#define  SFLOW_FLOW_EXTENDED_MPLS_LVP_FEC 139 
#define  SFLOW_FLOW_EXTENDED_MPLS_TUNNEL 138 
#define  SFLOW_FLOW_EXTENDED_MPLS_VC 137 
#define  SFLOW_FLOW_EXTENDED_NAT_DATA 136 
#define  SFLOW_FLOW_EXTENDED_ROUTER_DATA 135 
#define  SFLOW_FLOW_EXTENDED_SWITCH_DATA 134 
#define  SFLOW_FLOW_EXTENDED_URL_DATA 133 
#define  SFLOW_FLOW_EXTENDED_USER_DATA 132 
#define  SFLOW_FLOW_EXTENDED_VLAN_TUNNEL 131 
#define  SFLOW_FLOW_IPV4_DATA 130 
#define  SFLOW_FLOW_IPV6_DATA 129 
#define  SFLOW_FLOW_RAW_PACKET 128 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  sflow_flow_type_values ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC8(netdissect_options *ndo,
                         const u_char *pointer, u_int len, u_int records)
{
    u_int nrecords;
    const u_char *tptr;
    u_int tlen;
    u_int flow_type;
    u_int enterprise;
    u_int flow_len;
    const struct sflow_flow_record_t *sflow_flow_record;

    nrecords = records;
    tptr = pointer;
    tlen = len;

    while (nrecords > 0) {
	/* do we have the "header?" */
	if (tlen < sizeof(struct sflow_flow_record_t))
	    return 1;

	sflow_flow_record = (const struct sflow_flow_record_t *)tptr;
	FUNC2(*sflow_flow_record);

	/* so, the funky encoding means we cannot blythly mask-off
	   bits, we must also check the enterprise. */

	enterprise = FUNC0(sflow_flow_record->format);
	flow_type = enterprise & 0x0FFF;
	enterprise = enterprise >> 12;
	flow_len  = FUNC0(sflow_flow_record->length);
	FUNC1((ndo, "\n\t    enterprise %u %s (%u) length %u",
	       enterprise,
	       (enterprise == 0) ? FUNC7(sflow_flow_type_values,"Unknown",flow_type) : "Unknown",
	       flow_type,
	       flow_len));

	tptr += sizeof(struct sflow_flow_record_t);
	tlen -= sizeof(struct sflow_flow_record_t);

	if (tlen < flow_len)
	    return 1;

	if (enterprise == 0) {
	    switch (flow_type) {
	    case SFLOW_FLOW_RAW_PACKET:
		if (FUNC5(ndo, tptr, tlen))
		    return 1;
		break;
	    case SFLOW_FLOW_EXTENDED_SWITCH_DATA:
		if (FUNC4(ndo, tptr, tlen))
		    return 1;
		break;
	    case SFLOW_FLOW_ETHERNET_FRAME:
		if (FUNC3(ndo, tptr, tlen))
		    return 1;
		break;
		/* FIXME these need a decoder */
	    case SFLOW_FLOW_IPV4_DATA:
	    case SFLOW_FLOW_IPV6_DATA:
	    case SFLOW_FLOW_EXTENDED_ROUTER_DATA:
	    case SFLOW_FLOW_EXTENDED_GATEWAY_DATA:
	    case SFLOW_FLOW_EXTENDED_USER_DATA:
	    case SFLOW_FLOW_EXTENDED_URL_DATA:
	    case SFLOW_FLOW_EXTENDED_MPLS_DATA:
	    case SFLOW_FLOW_EXTENDED_NAT_DATA:
	    case SFLOW_FLOW_EXTENDED_MPLS_TUNNEL:
	    case SFLOW_FLOW_EXTENDED_MPLS_VC:
	    case SFLOW_FLOW_EXTENDED_MPLS_FEC:
	    case SFLOW_FLOW_EXTENDED_MPLS_LVP_FEC:
	    case SFLOW_FLOW_EXTENDED_VLAN_TUNNEL:
		break;
	    default:
		if (ndo->ndo_vflag <= 1)
		    FUNC6(ndo, tptr, "\n\t\t", flow_len);
		break;
	    }
	}
	tptr += flow_len;
	tlen -= flow_len;
	nrecords--;

    }

    return 0;

trunc:
    return 1;
}