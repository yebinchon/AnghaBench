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
struct in_addr {int /*<<< orphan*/  s_addr; } ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int) ; 
 scalar_t__ RX_PACKET_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLNAMEMAX ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  vldb_req ; 

__attribute__((used)) static void
FUNC11(netdissect_options *ndo,
                 register const u_char *bp, int length, int32_t opcode)
{
	const struct rx_header *rxh;
	unsigned long i;

	if (length < (int)sizeof(struct rx_header))
		return;

	rxh = (const struct rx_header *) bp;

	/*
	 * Print out the afs call we're invoking.  The table used here was
	 * gleaned from vlserver/vldbint.xg.  Check to see if it's a
	 * Ubik call, however.
	 */

	FUNC3((ndo, " vldb"));

	if (FUNC8(opcode)) {
		FUNC10(ndo, bp, length, opcode);
		return;
	}

	FUNC3((ndo, " reply %s", FUNC9(vldb_req, "op#%d", opcode)));

	bp += sizeof(struct rx_header);

	/*
	 * If it was a data packet, interpret the response
	 */

	if (rxh->type == RX_PACKET_TYPE_DATA)
		switch (opcode) {
		case 510:	/* List entry */
			FUNC3((ndo, " count"));
			FUNC2();
			FUNC3((ndo, " nextindex"));
			FUNC2();
		case 503:	/* Get entry by id */
		case 504:	/* Get entry by name */
		{	unsigned long nservers, j;
			FUNC6(VLNAMEMAX);
			FUNC4(bp[0], sizeof(int32_t));
			bp += sizeof(int32_t);
			FUNC3((ndo, " numservers"));
			FUNC4(bp[0], sizeof(int32_t));
			nservers = FUNC1(bp);
			bp += sizeof(int32_t);
			FUNC3((ndo, " %lu", nservers));
			FUNC3((ndo, " servers"));
			for (i = 0; i < 8; i++) {
				FUNC4(bp[0], sizeof(int32_t));
				if (i < nservers)
					FUNC3((ndo, " %s",
					   FUNC7(((const struct in_addr *) bp)->s_addr)));
				bp += sizeof(int32_t);
			}
			FUNC3((ndo, " partitions"));
			for (i = 0; i < 8; i++) {
				FUNC4(bp[0], sizeof(int32_t));
				j = FUNC1(bp);
				if (i < nservers && j <= 26)
					FUNC3((ndo, " %c", 'a' + (int)j));
				else if (i < nservers)
					FUNC3((ndo, " %lu", j));
				bp += sizeof(int32_t);
			}
			FUNC4(bp[0], 8 * sizeof(int32_t));
			bp += 8 * sizeof(int32_t);
			FUNC3((ndo, " rwvol"));
			FUNC5();
			FUNC3((ndo, " rovol"));
			FUNC5();
			FUNC3((ndo, " backup"));
			FUNC5();
		}
			break;
		case 505:	/* Get new volume ID */
			FUNC3((ndo, " newvol"));
			FUNC5();
			break;
		case 521:	/* List entry */
		case 529:	/* List entry U */
			FUNC3((ndo, " count"));
			FUNC2();
			FUNC3((ndo, " nextindex"));
			FUNC2();
		case 518:	/* Get entry by ID N */
		case 519:	/* Get entry by name N */
		{	unsigned long nservers, j;
			FUNC6(VLNAMEMAX);
			FUNC3((ndo, " numservers"));
			FUNC4(bp[0], sizeof(int32_t));
			nservers = FUNC1(bp);
			bp += sizeof(int32_t);
			FUNC3((ndo, " %lu", nservers));
			FUNC3((ndo, " servers"));
			for (i = 0; i < 13; i++) {
				FUNC4(bp[0], sizeof(int32_t));
				if (i < nservers)
					FUNC3((ndo, " %s",
					   FUNC7(((const struct in_addr *) bp)->s_addr)));
				bp += sizeof(int32_t);
			}
			FUNC3((ndo, " partitions"));
			for (i = 0; i < 13; i++) {
				FUNC4(bp[0], sizeof(int32_t));
				j = FUNC1(bp);
				if (i < nservers && j <= 26)
					FUNC3((ndo, " %c", 'a' + (int)j));
				else if (i < nservers)
					FUNC3((ndo, " %lu", j));
				bp += sizeof(int32_t);
			}
			FUNC4(bp[0], 13 * sizeof(int32_t));
			bp += 13 * sizeof(int32_t);
			FUNC3((ndo, " rwvol"));
			FUNC5();
			FUNC3((ndo, " rovol"));
			FUNC5();
			FUNC3((ndo, " backup"));
			FUNC5();
		}
			break;
		case 526:	/* Get entry by ID U */
		case 527:	/* Get entry by name U */
		{	unsigned long nservers, j;
			FUNC6(VLNAMEMAX);
			FUNC3((ndo, " numservers"));
			FUNC4(bp[0], sizeof(int32_t));
			nservers = FUNC1(bp);
			bp += sizeof(int32_t);
			FUNC3((ndo, " %lu", nservers));
			FUNC3((ndo, " servers"));
			for (i = 0; i < 13; i++) {
				if (i < nservers) {
					FUNC3((ndo, " afsuuid"));
					FUNC0();
				} else {
					FUNC4(bp[0], 44);
					bp += 44;
				}
			}
			FUNC4(bp[0], 4 * 13);
			bp += 4 * 13;
			FUNC3((ndo, " partitions"));
			for (i = 0; i < 13; i++) {
				FUNC4(bp[0], sizeof(int32_t));
				j = FUNC1(bp);
				if (i < nservers && j <= 26)
					FUNC3((ndo, " %c", 'a' + (int)j));
				else if (i < nservers)
					FUNC3((ndo, " %lu", j));
				bp += sizeof(int32_t);
			}
			FUNC4(bp[0], 13 * sizeof(int32_t));
			bp += 13 * sizeof(int32_t);
			FUNC3((ndo, " rwvol"));
			FUNC5();
			FUNC3((ndo, " rovol"));
			FUNC5();
			FUNC3((ndo, " backup"));
			FUNC5();
		}
		default:
			;
		}

	else {
		/*
		 * Otherwise, just print out the return code
		 */
		FUNC3((ndo, " errcode"));
		FUNC2();
	}

	return;

trunc:
	FUNC3((ndo, " [|vldb]"));
}