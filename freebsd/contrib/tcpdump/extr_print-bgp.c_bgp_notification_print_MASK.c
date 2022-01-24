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
typedef  int u_char ;
struct bgp_notification {int const bgpn_major; int const bgpn_minor; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int BGP_NOTIFICATION_SIZE ; 
#define  BGP_NOTIFY_MAJOR_CAP 133 
#define  BGP_NOTIFY_MAJOR_CEASE 132 
#define  BGP_NOTIFY_MAJOR_FSM 131 
#define  BGP_NOTIFY_MAJOR_MSG 130 
#define  BGP_NOTIFY_MAJOR_OPEN 129 
#define  BGP_NOTIFY_MAJOR_UPDATE 128 
 int const BGP_NOTIFY_MINOR_CEASE_MAXPRFX ; 
 int const FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int /*<<< orphan*/  af_values ; 
 int /*<<< orphan*/  bgp_notify_major_values ; 
 int /*<<< orphan*/  bgp_notify_minor_cap_values ; 
 int /*<<< orphan*/  bgp_notify_minor_cease_values ; 
 int /*<<< orphan*/  bgp_notify_minor_fsm_values ; 
 int /*<<< orphan*/  bgp_notify_minor_msg_values ; 
 int /*<<< orphan*/  bgp_notify_minor_open_values ; 
 int /*<<< orphan*/  bgp_notify_minor_update_values ; 
 int /*<<< orphan*/  bgp_safi_values ; 
 int /*<<< orphan*/  FUNC4 (struct bgp_notification*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int const) ; 

__attribute__((used)) static void
FUNC6(netdissect_options *ndo,
                       const u_char *dat, int length)
{
	struct bgp_notification bgpn;
	const u_char *tptr;

	FUNC3(dat[0], BGP_NOTIFICATION_SIZE);
	FUNC4(&bgpn, dat, BGP_NOTIFICATION_SIZE);

        /* some little sanity checking */
        if (length<BGP_NOTIFICATION_SIZE)
            return;

	FUNC2((ndo, ", %s (%u)",
	       FUNC5(bgp_notify_major_values, "Unknown Error",
			  bgpn.bgpn_major),
	       bgpn.bgpn_major));

        switch (bgpn.bgpn_major) {

        case BGP_NOTIFY_MAJOR_MSG:
            FUNC2((ndo, ", subcode %s (%u)",
		   FUNC5(bgp_notify_minor_msg_values, "Unknown",
			      bgpn.bgpn_minor),
		   bgpn.bgpn_minor));
            break;
        case BGP_NOTIFY_MAJOR_OPEN:
            FUNC2((ndo, ", subcode %s (%u)",
		   FUNC5(bgp_notify_minor_open_values, "Unknown",
			      bgpn.bgpn_minor),
		   bgpn.bgpn_minor));
            break;
        case BGP_NOTIFY_MAJOR_UPDATE:
            FUNC2((ndo, ", subcode %s (%u)",
		   FUNC5(bgp_notify_minor_update_values, "Unknown",
			      bgpn.bgpn_minor),
		   bgpn.bgpn_minor));
            break;
        case BGP_NOTIFY_MAJOR_FSM:
            FUNC2((ndo, " subcode %s (%u)",
		   FUNC5(bgp_notify_minor_fsm_values, "Unknown",
			      bgpn.bgpn_minor),
		   bgpn.bgpn_minor));
            break;
        case BGP_NOTIFY_MAJOR_CAP:
            FUNC2((ndo, " subcode %s (%u)",
		   FUNC5(bgp_notify_minor_cap_values, "Unknown",
			      bgpn.bgpn_minor),
		   bgpn.bgpn_minor));
            break;
        case BGP_NOTIFY_MAJOR_CEASE:
            FUNC2((ndo, ", subcode %s (%u)",
		   FUNC5(bgp_notify_minor_cease_values, "Unknown",
			      bgpn.bgpn_minor),
		   bgpn.bgpn_minor));

	    /* draft-ietf-idr-cease-subcode-02 mentions optionally 7 bytes
             * for the maxprefix subtype, which may contain AFI, SAFI and MAXPREFIXES
             */
	    if(bgpn.bgpn_minor == BGP_NOTIFY_MINOR_CEASE_MAXPRFX && length >= BGP_NOTIFICATION_SIZE + 7) {
		tptr = dat + BGP_NOTIFICATION_SIZE;
		FUNC3(*tptr, 7);
		FUNC2((ndo, ", AFI %s (%u), SAFI %s (%u), Max Prefixes: %u",
		       FUNC5(af_values, "Unknown",
				  FUNC0(tptr)),
		       FUNC0(tptr),
		       FUNC5(bgp_safi_values, "Unknown", *(tptr+2)),
		       *(tptr+2),
		       FUNC1(tptr+3)));
	    }
            break;
        default:
            break;
        }

	return;
trunc:
	FUNC2((ndo, "[|BGP]"));
}