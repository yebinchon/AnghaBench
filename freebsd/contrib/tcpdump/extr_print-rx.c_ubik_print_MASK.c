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
struct rx_header {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ubik_lock_types ; 
 int /*<<< orphan*/  ubik_req ; 

__attribute__((used)) static void
FUNC9(netdissect_options *ndo,
           register const u_char *bp)
{
	int ubik_op;
	int32_t temp;

	/*
	 * Print out the afs call we're invoking.  The table used here was
	 * gleaned from ubik/ubik_int.xg
	 */

	/* Every function that calls this function first makes a bounds check
	 * for (sizeof(rx_header) + 4) bytes, so long as it remains this way
	 * the line below will not over-read.
	 */
	ubik_op = FUNC1(bp + sizeof(struct rx_header));

	FUNC3((ndo, " ubik call %s", FUNC8(ubik_req, "op#%d", ubik_op)));

	/*
	 * Decode some of the arguments to the Ubik calls
	 */

	bp += sizeof(struct rx_header) + 4;

	switch (ubik_op) {
		case 10000:		/* Beacon */
			FUNC4(bp[0], 4);
			temp = FUNC1(bp);
			bp += sizeof(int32_t);
			FUNC3((ndo, " syncsite %s", temp ? "yes" : "no"));
			FUNC3((ndo, " votestart"));
			FUNC0();
			FUNC3((ndo, " dbversion"));
			FUNC6();
			FUNC3((ndo, " tid"));
			FUNC6();
			break;
		case 10003:		/* Get sync site */
			FUNC3((ndo, " site"));
			FUNC7();
			break;
		case 20000:		/* Begin */
		case 20001:		/* Commit */
		case 20007:		/* Abort */
		case 20008:		/* Release locks */
		case 20010:		/* Writev */
			FUNC3((ndo, " tid"));
			FUNC6();
			break;
		case 20002:		/* Lock */
			FUNC3((ndo, " tid"));
			FUNC6();
			FUNC3((ndo, " file"));
			FUNC2();
			FUNC3((ndo, " pos"));
			FUNC2();
			FUNC3((ndo, " length"));
			FUNC2();
			FUNC5(bp);
			temp = FUNC1(bp);
			bp += sizeof(int32_t);
			FUNC8(ubik_lock_types, "type %d", temp);
			break;
		case 20003:		/* Write */
			FUNC3((ndo, " tid"));
			FUNC6();
			FUNC3((ndo, " file"));
			FUNC2();
			FUNC3((ndo, " pos"));
			FUNC2();
			break;
		case 20005:		/* Get file */
			FUNC3((ndo, " file"));
			FUNC2();
			break;
		case 20006:		/* Send file */
			FUNC3((ndo, " file"));
			FUNC2();
			FUNC3((ndo, " length"));
			FUNC2();
			FUNC3((ndo, " dbversion"));
			FUNC6();
			break;
		case 20009:		/* Truncate */
			FUNC3((ndo, " tid"));
			FUNC6();
			FUNC3((ndo, " file"));
			FUNC2();
			FUNC3((ndo, " length"));
			FUNC2();
			break;
		case 20012:		/* Set version */
			FUNC3((ndo, " tid"));
			FUNC6();
			FUNC3((ndo, " oldversion"));
			FUNC6();
			FUNC3((ndo, " newversion"));
			FUNC6();
			break;
		default:
			;
	}

	return;

trunc:
	FUNC3((ndo, " [|ubik]"));
}