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
 int /*<<< orphan*/  AFSNAMEMAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int) ; 
 scalar_t__ RX_PACKET_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  vol_req ; 

__attribute__((used)) static void
FUNC9(netdissect_options *ndo,
                register const u_char *bp, int length, int32_t opcode)
{
	const struct rx_header *rxh;

	if (length <= (int)sizeof(struct rx_header))
		return;

	rxh = (const struct rx_header *) bp;

	/*
	 * Print out the afs call we're invoking.  The table used here was
	 * gleaned from volser/volint.xg
	 */

	FUNC3((ndo, " vol reply %s", FUNC8(vol_req, "op#%d", opcode)));

	bp += sizeof(struct rx_header);

	/*
	 * If it was a data packet, interpret the response.
	 */

	if (rxh->type == RX_PACKET_TYPE_DATA) {
		switch (opcode) {
			case 100:	/* Create volume */
				FUNC3((ndo, " volid"));
				FUNC6();
				FUNC3((ndo, " trans"));
				FUNC6();
				break;
			case 104:	/* End transaction */
				FUNC6();
				break;
			case 105:	/* Clone */
				FUNC3((ndo, " newvol"));
				FUNC6();
				break;
			case 107:	/* Get flags */
				FUNC6();
				break;
			case 108:	/* Transaction create */
				FUNC3((ndo, " trans"));
				FUNC6();
				break;
			case 110:	/* Get n-th volume */
				FUNC3((ndo, " volume"));
				FUNC6();
				FUNC3((ndo, " partition"));
				FUNC6();
				break;
			case 112:	/* Get name */
				FUNC5(AFSNAMEMAX);
				break;
			case 113:	/* Get status */
				FUNC3((ndo, " volid"));
				FUNC6();
				FUNC3((ndo, " nextuniq"));
				FUNC6();
				FUNC3((ndo, " type"));
				FUNC6();
				FUNC3((ndo, " parentid"));
				FUNC6();
				FUNC3((ndo, " clone"));
				FUNC6();
				FUNC3((ndo, " backup"));
				FUNC6();
				FUNC3((ndo, " restore"));
				FUNC6();
				FUNC3((ndo, " maxquota"));
				FUNC6();
				FUNC3((ndo, " minquota"));
				FUNC6();
				FUNC3((ndo, " owner"));
				FUNC6();
				FUNC3((ndo, " create"));
				FUNC0();
				FUNC3((ndo, " access"));
				FUNC0();
				FUNC3((ndo, " update"));
				FUNC0();
				FUNC3((ndo, " expire"));
				FUNC0();
				FUNC3((ndo, " backup"));
				FUNC0();
				FUNC3((ndo, " copy"));
				FUNC0();
				break;
			case 115:	/* Old list partitions */
				break;
			case 116:	/* List volumes */
			case 121:	/* List one volume */
				{
					unsigned long i, j;
					FUNC4(bp[0], 4);
					j = FUNC1(bp);
					bp += sizeof(int32_t);
					for (i = 0; i < j; i++) {
						FUNC3((ndo, " name"));
						FUNC7(32);
						FUNC3((ndo, " volid"));
						FUNC6();
						FUNC3((ndo, " type"));
						bp += sizeof(int32_t) * 21;
						if (i != j - 1)
							FUNC3((ndo, ","));
					}
					if (j == 0)
						FUNC3((ndo, " <none!>"));
				}
				break;


			default:
				;
		}
	} else {
		/*
		 * Otherwise, just print out the return code
		 */
		FUNC3((ndo, " errcode"));
		FUNC2();
	}

	return;

trunc:
	FUNC3((ndo, " [|vol]"));
}