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
typedef  int /*<<< orphan*/  u_char ;
struct rx_header {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int int32_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  PRNAMEMAX ; 
 scalar_t__ RX_PACKET_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  pt_req ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static void
FUNC8(netdissect_options *ndo,
                 register const u_char *bp, int length, int32_t opcode)
{
	const struct rx_header *rxh;
	unsigned long i;

	if (length < (int)sizeof(struct rx_header))
		return;

	rxh = (const struct rx_header *) bp;

	/*
	 * Print out the afs call we're invoking.  The table used here was
	 * gleaned from ptserver/ptint.xg.  Check to see if it's a
	 * Ubik call, however.
	 */

	FUNC2((ndo, " pt"));

	if (FUNC5(opcode)) {
		FUNC7(ndo, bp, length, opcode);
		return;
	}

	FUNC2((ndo, " reply %s", FUNC6(pt_req, "op#%d", opcode)));

	bp += sizeof(struct rx_header);

	/*
	 * If it was a data packet, interpret the response
	 */

	if (rxh->type == RX_PACKET_TYPE_DATA)
		switch (opcode) {
		case 504:		/* Name to ID */
		{
			unsigned long j;
			FUNC2((ndo, " ids:"));
			FUNC3(bp[0], 4);
			i = FUNC0(bp);
			bp += sizeof(int32_t);
			for (j = 0; j < i; j++)
				FUNC1();
			if (j == 0)
				FUNC2((ndo, " <none!>"));
		}
			break;
		case 505:		/* ID to name */
		{
			unsigned long j;
			FUNC3(bp[0], 4);
			j = FUNC0(bp);
			bp += sizeof(int32_t);

			/*
			 * Who designed this chicken-shit protocol?
			 *
			 * Each character is stored as a 32-bit
			 * integer!
			 */

			for (i = 0; i < j; i++) {
				FUNC4(PRNAMEMAX);
			}
			if (j == 0)
				FUNC2((ndo, " <none!>"));
		}
			break;
		case 508:		/* Get CPS */
		case 514:		/* List elements */
		case 517:		/* List owned */
		case 518:		/* Get CPS2 */
		case 519:		/* Get host CPS */
		{
			unsigned long j;
			FUNC3(bp[0], 4);
			j = FUNC0(bp);
			bp += sizeof(int32_t);
			for (i = 0; i < j; i++) {
				FUNC1();
			}
			if (j == 0)
				FUNC2((ndo, " <none!>"));
		}
			break;
		case 510:		/* List max */
			FUNC2((ndo, " maxuid"));
			FUNC1();
			FUNC2((ndo, " maxgid"));
			FUNC1();
			break;
		default:
			;
		}
	else {
		/*
		 * Otherwise, just print out the return code
		 */
		FUNC2((ndo, " errcode"));
		FUNC1();
	}

	return;

trunc:
	FUNC2((ndo, " [|pt]"));
}