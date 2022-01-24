#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct rx_header {scalar_t__ type; int flags; int /*<<< orphan*/  seq; int /*<<< orphan*/  serviceId; scalar_t__ securityIndex; int /*<<< orphan*/  serial; int /*<<< orphan*/  callNumber; int /*<<< orphan*/  cid; } ;
struct ip {int dummy; } ;
struct TYPE_21__ {int ndo_vflag; int /*<<< orphan*/  const* ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_22__ {int flag; scalar_t__ packetType; int /*<<< orphan*/  s; } ;

/* Variables and functions */
#define  BOS_RX_PORT 134 
#define  CB_RX_PORT 133 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
#define  FS_RX_PORT 132 
#define  KAUTH_RX_PORT 131 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int NUM_RX_FLAGS ; 
#define  PROT_RX_PORT 130 
 int RX_CLIENT_INITIATED ; 
 scalar_t__ RX_PACKET_TYPE_ABORT ; 
 scalar_t__ RX_PACKET_TYPE_ACK ; 
 scalar_t__ RX_PACKET_TYPE_DATA ; 
#define  VLDB_RX_PORT 129 
#define  VOL_RX_PORT 128 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC14 (struct rx_header const*,struct ip const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/  const*,struct ip const*,int) ; 
 TYPE_7__* rx_flags ; 
 int /*<<< orphan*/  rx_types ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

void
FUNC21(netdissect_options *ndo,
         register const u_char *bp, int length, int sport, int dport,
         const u_char *bp2)
{
	register const struct rx_header *rxh;
	int i;
	int32_t opcode;

	if (ndo->ndo_snapend - bp < (int)sizeof (struct rx_header)) {
		FUNC2((ndo, " [|rx] (%d)", length));
		return;
	}

	rxh = (const struct rx_header *) bp;

	FUNC2((ndo, " rx %s", FUNC16(rx_types, "type %d", rxh->type)));

	if (ndo->ndo_vflag) {
		int firstflag = 0;

		if (ndo->ndo_vflag > 1)
			FUNC2((ndo, " cid %08x call# %d",
			       (int) FUNC1(&rxh->cid),
			       (int) FUNC1(&rxh->callNumber)));

		FUNC2((ndo, " seq %d ser %d",
		       (int) FUNC1(&rxh->seq),
		       (int) FUNC1(&rxh->serial)));

		if (ndo->ndo_vflag > 2)
			FUNC2((ndo, " secindex %d serviceid %hu",
				(int) rxh->securityIndex,
				FUNC0(&rxh->serviceId)));

		if (ndo->ndo_vflag > 1)
			for (i = 0; i < NUM_RX_FLAGS; i++) {
				if (rxh->flags & rx_flags[i].flag &&
				    (!rx_flags[i].packetType ||
				     rxh->type == rx_flags[i].packetType)) {
					if (!firstflag) {
						firstflag = 1;
						FUNC2((ndo, " "));
					} else {
						FUNC2((ndo, ","));
					}
					FUNC2((ndo, "<%s>", rx_flags[i].s));
				}
			}
	}

	/*
	 * Try to handle AFS calls that we know about.  Check the destination
	 * port and make sure it's a data packet.  Also, make sure the
	 * seq number is 1 (because otherwise it's a continuation packet,
	 * and we can't interpret that).  Also, seems that reply packets
	 * do not have the client-init flag set, so we check for that
	 * as well.
	 */

	if (rxh->type == RX_PACKET_TYPE_DATA &&
	    FUNC1(&rxh->seq) == 1 &&
	    rxh->flags & RX_CLIENT_INITIATED) {

		/*
		 * Insert this call into the call cache table, so we
		 * have a chance to print out replies
		 */

		FUNC15(ndo, bp, (const struct ip *) bp2, dport);

		switch (dport) {
			case FS_RX_PORT:	/* AFS file service */
				FUNC7(ndo, bp, length);
				break;
			case CB_RX_PORT:	/* AFS callback service */
				FUNC5(ndo, bp, length);
				break;
			case PROT_RX_PORT:	/* AFS protection service */
				FUNC11(ndo, bp, length);
				break;
			case VLDB_RX_PORT:	/* AFS VLDB service */
				FUNC17(ndo, bp, length);
				break;
			case KAUTH_RX_PORT:	/* AFS Kerberos auth service */
				FUNC9(ndo, bp, length);
				break;
			case VOL_RX_PORT:	/* AFS Volume service */
				FUNC19(ndo, bp, length);
				break;
			case BOS_RX_PORT:	/* AFS BOS service */
				FUNC3(ndo, bp, length);
				break;
			default:
				;
		}

	/*
	 * If it's a reply (client-init is _not_ set, but seq is one)
	 * then look it up in the cache.  If we find it, call the reply
	 * printing functions  Note that we handle abort packets here,
	 * because printing out the return code can be useful at times.
	 */

	} else if (((rxh->type == RX_PACKET_TYPE_DATA &&
					FUNC1(&rxh->seq) == 1) ||
		    rxh->type == RX_PACKET_TYPE_ABORT) &&
		   (rxh->flags & RX_CLIENT_INITIATED) == 0 &&
		   FUNC14(rxh, (const struct ip *) bp2,
				 sport, &opcode)) {

		switch (sport) {
			case FS_RX_PORT:	/* AFS file service */
				FUNC8(ndo, bp, length, opcode);
				break;
			case CB_RX_PORT:	/* AFS callback service */
				FUNC6(ndo, bp, length, opcode);
				break;
			case PROT_RX_PORT:	/* AFS PT service */
				FUNC12(ndo, bp, length, opcode);
				break;
			case VLDB_RX_PORT:	/* AFS VLDB service */
				FUNC18(ndo, bp, length, opcode);
				break;
			case KAUTH_RX_PORT:	/* AFS Kerberos auth service */
				FUNC10(ndo, bp, length, opcode);
				break;
			case VOL_RX_PORT:	/* AFS Volume service */
				FUNC20(ndo, bp, length, opcode);
				break;
			case BOS_RX_PORT:	/* AFS BOS service */
				FUNC4(ndo, bp, length, opcode);
				break;
			default:
				;
		}

	/*
	 * If it's an RX ack packet, then use the appropriate ack decoding
	 * function (there isn't any service-specific information in the
	 * ack packet, so we can use one for all AFS services)
	 */

	} else if (rxh->type == RX_PACKET_TYPE_ACK)
		FUNC13(ndo, bp, length);


	FUNC2((ndo, " (%d)", length));
}