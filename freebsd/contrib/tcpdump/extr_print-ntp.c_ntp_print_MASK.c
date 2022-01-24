#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct ntpdata {int status; int stratum; int ppoll; int root_delay; int root_dispersion; int refid; int ref_timestamp; int org_timestamp; int rec_timestamp; int xmt_timestamp; int key_id; int message_digest; int /*<<< orphan*/  precision; } ;
struct TYPE_9__ {int /*<<< orphan*/  ndo_snapend; int /*<<< orphan*/  ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  INFO_QUERY 131 
#define  INFO_REPLY 130 
 int LEAPMASK ; 
 int MODEMASK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
#define  PRIM_REF 129 
#define  UNSPECIFIED 128 
 int VERSIONMASK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  ntp_leapind_values ; 
 int /*<<< orphan*/  ntp_mode_values ; 
 int /*<<< orphan*/  ntp_stratum_values ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC10(netdissect_options *ndo,
          register const u_char *cp, u_int length)
{
	register const struct ntpdata *bp;
	int mode, version, leapind;

	bp = (const struct ntpdata *)cp;

	FUNC2(bp->status);

	version = (int)(bp->status & VERSIONMASK) >> 3;
	FUNC1((ndo, "NTPv%d", version));

	mode = bp->status & MODEMASK;
	if (!ndo->ndo_vflag) {
		FUNC1((ndo, ", %s, length %u",
		          FUNC9(ntp_mode_values, "Unknown mode", mode),
		          length));
		return;
	}

	FUNC1((ndo, ", length %u\n\t%s",
	          length,
	          FUNC9(ntp_mode_values, "Unknown mode", mode)));

	leapind = bp->status & LEAPMASK;
	FUNC1((ndo, ", Leap indicator: %s (%u)",
	          FUNC9(ntp_leapind_values, "Unknown", leapind),
	          leapind));

	FUNC2(bp->stratum);
	FUNC1((ndo, ", Stratum %u (%s)",
		bp->stratum,
		FUNC9(ntp_stratum_values, (bp->stratum >=2 && bp->stratum<=15) ? "secondary reference" : "reserved", bp->stratum)));

	FUNC2(bp->ppoll);
	FUNC1((ndo, ", poll %u (%us)", bp->ppoll, 1 << bp->ppoll));

	/* Can't ND_TCHECK bp->precision bitfield so bp->distance + 0 instead */
	FUNC3(bp->root_delay, 0);
	FUNC1((ndo, ", precision %d", bp->precision));

	FUNC2(bp->root_delay);
	FUNC1((ndo, "\n\tRoot Delay: "));
	FUNC8(ndo, &bp->root_delay);

	FUNC2(bp->root_dispersion);
	FUNC1((ndo, ", Root dispersion: "));
	FUNC8(ndo, &bp->root_dispersion);

	FUNC2(bp->refid);
	FUNC1((ndo, ", Reference-ID: "));
	/* Interpretation depends on stratum */
	switch (bp->stratum) {

	case UNSPECIFIED:
		FUNC1((ndo, "(unspec)"));
		break;

	case PRIM_REF:
		if (FUNC4(ndo, (const u_char *)&(bp->refid), 4, ndo->ndo_snapend))
			goto trunc;
		break;

	case INFO_QUERY:
		FUNC1((ndo, "%s INFO_QUERY", FUNC5(ndo, &(bp->refid))));
		/* this doesn't have more content */
		return;

	case INFO_REPLY:
		FUNC1((ndo, "%s INFO_REPLY", FUNC5(ndo, &(bp->refid))));
		/* this is too complex to be worth printing */
		return;

	default:
		FUNC1((ndo, "%s", FUNC5(ndo, &(bp->refid))));
		break;
	}

	FUNC2(bp->ref_timestamp);
	FUNC1((ndo, "\n\t  Reference Timestamp:  "));
	FUNC7(ndo, &(bp->ref_timestamp));

	FUNC2(bp->org_timestamp);
	FUNC1((ndo, "\n\t  Originator Timestamp: "));
	FUNC7(ndo, &(bp->org_timestamp));

	FUNC2(bp->rec_timestamp);
	FUNC1((ndo, "\n\t  Receive Timestamp:    "));
	FUNC7(ndo, &(bp->rec_timestamp));

	FUNC2(bp->xmt_timestamp);
	FUNC1((ndo, "\n\t  Transmit Timestamp:   "));
	FUNC7(ndo, &(bp->xmt_timestamp));

	FUNC1((ndo, "\n\t    Originator - Receive Timestamp:  "));
	FUNC6(ndo, &(bp->org_timestamp), &(bp->rec_timestamp));

	FUNC1((ndo, "\n\t    Originator - Transmit Timestamp: "));
	FUNC6(ndo, &(bp->org_timestamp), &(bp->xmt_timestamp));

	if ( (sizeof(struct ntpdata) - length) == 16) { 	/* Optional: key-id */
		FUNC2(bp->key_id);
		FUNC1((ndo, "\n\tKey id: %u", bp->key_id));
	} else if ( (sizeof(struct ntpdata) - length) == 0) { 	/* Optional: key-id + authentication */
		FUNC2(bp->key_id);
		FUNC1((ndo, "\n\tKey id: %u", bp->key_id));
		FUNC3(bp->message_digest, sizeof (bp->message_digest));
                FUNC1((ndo, "\n\tAuthentication: %08x%08x%08x%08x",
        		       FUNC0(bp->message_digest),
		               FUNC0(bp->message_digest + 4),
		               FUNC0(bp->message_digest + 8),
		               FUNC0(bp->message_digest + 12)));
        }
	return;

trunc:
	FUNC1((ndo, " [|ntp]"));
}