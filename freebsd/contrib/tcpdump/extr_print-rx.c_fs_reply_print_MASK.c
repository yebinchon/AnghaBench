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
typedef  int /*<<< orphan*/  a ;

/* Variables and functions */
 int /*<<< orphan*/  AFSNAMEMAX ; 
 int /*<<< orphan*/  AFSOPAQUEMAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int) ; 
 scalar_t__ RX_PACKET_TYPE_ABORT ; 
 scalar_t__ RX_PACKET_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  afs_fs_errors ; 
 int /*<<< orphan*/  fs_req ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,unsigned long) ; 

__attribute__((used)) static void
FUNC10(netdissect_options *ndo,
               register const u_char *bp, int length, int32_t opcode)
{
	unsigned long i;
	const struct rx_header *rxh;

	if (length <= (int)sizeof(struct rx_header))
		return;

	rxh = (const struct rx_header *) bp;

	/*
	 * Print out the afs call we're invoking.  The table used here was
	 * gleaned from fsint/afsint.xg
	 */

	FUNC3((ndo, " fs reply %s", FUNC9(fs_req, "op#%d", opcode)));

	bp += sizeof(struct rx_header);

	/*
	 * If it was a data packet, interpret the response
	 */

	if (rxh->type == RX_PACKET_TYPE_DATA) {
		switch (opcode) {
		case 131:	/* Fetch ACL */
		{
			char a[AFSOPAQUEMAX+1];
			FUNC4(bp[0], 4);
			i = FUNC1(bp);
			bp += sizeof(int32_t);
			FUNC4(bp[0], i);
			i = FUNC7(AFSOPAQUEMAX, i);
			FUNC8(a, (const char *) bp, i);
			a[i] = '\0';
			FUNC6(ndo, (u_char *) a, sizeof(a), (u_char *) a + i);
			break;
		}
		case 137:	/* Create file */
		case 141:	/* MakeDir */
			FUNC3((ndo, " new"));
			FUNC2();
			break;
		case 151:	/* Get root volume */
			FUNC3((ndo, " root volume"));
			FUNC5(AFSNAMEMAX);
			break;
		case 153:	/* Get time */
			FUNC0();
			break;
		default:
			;
		}
	} else if (rxh->type == RX_PACKET_TYPE_ABORT) {
		/*
		 * Otherwise, just print out the return code
		 */
		FUNC4(bp[0], sizeof(int32_t));
		i = (int) FUNC1(bp);
		bp += sizeof(int32_t);

		FUNC3((ndo, " error %s", FUNC9(afs_fs_errors, "#%d", i)));
	} else {
		FUNC3((ndo, " strange fs reply of type %d", rxh->type));
	}

	return;

trunc:
	FUNC3((ndo, " [|fs]"));
}