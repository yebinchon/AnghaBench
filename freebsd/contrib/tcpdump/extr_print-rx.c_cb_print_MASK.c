#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct rx_header {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  const* ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  cb_req ; 
 int /*<<< orphan*/  cb_types ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned long) ; 

__attribute__((used)) static void
FUNC9(netdissect_options *ndo,
         register const u_char *bp, int length)
{
	int cb_op;
	unsigned long i;

	if (length <= (int)sizeof(struct rx_header))
		return;

	if (ndo->ndo_snapend - bp + 1 <= (int)(sizeof(struct rx_header) + sizeof(int32_t))) {
		goto trunc;
	}

	/*
	 * Print out the afs call we're invoking.  The table used here was
	 * gleaned from fsint/afscbint.xg
	 */

	cb_op = FUNC2(bp + sizeof(struct rx_header));

	FUNC5((ndo, " cb call %s", FUNC8(cb_req, "op#%d", cb_op)));

	bp += sizeof(struct rx_header) + 4;

	/*
	 * Print out the afs call we're invoking.  The table used here was
	 * gleaned from fsint/afscbint.xg
	 */

	switch (cb_op) {
		case 204:		/* Callback */
		{
			unsigned long j, t;
			FUNC6(bp[0], 4);
			j = FUNC2(bp);
			bp += sizeof(int32_t);

			for (i = 0; i < j; i++) {
				FUNC3();
				if (i != j - 1)
					FUNC5((ndo, ","));
			}

			if (j == 0)
				FUNC5((ndo, " <none!>"));

			FUNC7(bp);
			j = FUNC2(bp);
			bp += sizeof(int32_t);

			if (j != 0)
				FUNC5((ndo, ";"));

			for (i = 0; i < j; i++) {
				FUNC5((ndo, " ver"));
				FUNC4();
				FUNC5((ndo, " expires"));
				FUNC1();
				FUNC6(bp[0], 4);
				t = FUNC2(bp);
				bp += sizeof(int32_t);
				FUNC8(cb_types, "type %d", t);
			}
		}
		case 214: {
			FUNC5((ndo, " afsuuid"));
			FUNC0();
			break;
		}
		default:
			;
	}

	return;

trunc:
	FUNC5((ndo, " [|cb]"));
}