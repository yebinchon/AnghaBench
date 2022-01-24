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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ RX_PACKET_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ubik_req ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
                 register const u_char *bp, int length, int32_t opcode)
{
	const struct rx_header *rxh;

	if (length < (int)sizeof(struct rx_header))
		return;

	rxh = (const struct rx_header *) bp;

	/*
	 * Print out the ubik call we're invoking.  This table was gleaned
	 * from ubik/ubik_int.xg
	 */

	FUNC2((ndo, " ubik reply %s", FUNC4(ubik_req, "op#%d", opcode)));

	bp += sizeof(struct rx_header);

	/*
	 * If it was a data packet, print out the arguments to the Ubik calls
	 */

	if (rxh->type == RX_PACKET_TYPE_DATA)
		switch (opcode) {
		case 10000:		/* Beacon */
			FUNC2((ndo, " vote no"));
			break;
		case 20004:		/* Get version */
			FUNC2((ndo, " dbversion"));
			FUNC3();
			break;
		default:
			;
		}

	/*
	 * Otherwise, print out "yes" it it was a beacon packet (because
	 * that's how yes votes are returned, go figure), otherwise
	 * just print out the error code.
	 */

	else
		switch (opcode) {
		case 10000:		/* Beacon */
			FUNC2((ndo, " vote yes until"));
			FUNC0();
			break;
		default:
			FUNC2((ndo, " errcode"));
			FUNC1();
		}

	return;

trunc:
	FUNC2((ndo, " [|ubik]"));
}