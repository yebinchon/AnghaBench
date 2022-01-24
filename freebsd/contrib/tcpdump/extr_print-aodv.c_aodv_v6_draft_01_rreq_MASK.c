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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct aodv_rreq6_draft_01 {int rreq_type; int /*<<< orphan*/  rreq_os; int /*<<< orphan*/  rreq_oa; int /*<<< orphan*/  rreq_ds; int /*<<< orphan*/  rreq_da; int /*<<< orphan*/  rreq_id; int /*<<< orphan*/  rreq_hops; } ;
struct aodv_ext {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct aodv_rreq6_draft_01 const) ; 
 int RREQ_DEST ; 
 int RREQ_GRAT ; 
 int RREQ_JOIN ; 
 int RREQ_REPAIR ; 
 int RREQ_UNKNOWN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct aodv_ext const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo, const u_char *dat, u_int length)
{
	u_int i;
	const struct aodv_rreq6_draft_01 *ap = (const struct aodv_rreq6_draft_01 *)dat;

	FUNC2(*ap);
	if (length < sizeof(*ap))
		goto trunc;
	FUNC1((ndo, " rreq %u %s%s%s%s%shops %u id 0x%08lx\n"
	    "\tdst %s seq %lu src %s seq %lu", length,
	    ap->rreq_type & RREQ_JOIN ? "[J]" : "",
	    ap->rreq_type & RREQ_REPAIR ? "[R]" : "",
	    ap->rreq_type & RREQ_GRAT ? "[G]" : "",
	    ap->rreq_type & RREQ_DEST ? "[D]" : "",
	    ap->rreq_type & RREQ_UNKNOWN ? "[U] " : " ",
	    ap->rreq_hops,
	    (unsigned long)FUNC0(&ap->rreq_id),
	    FUNC4(ndo, &ap->rreq_da),
	    (unsigned long)FUNC0(&ap->rreq_ds),
	    FUNC4(ndo, &ap->rreq_oa),
	    (unsigned long)FUNC0(&ap->rreq_os)));
	i = length - sizeof(*ap);
	if (i >= sizeof(struct aodv_ext))
		FUNC3(ndo, (const struct aodv_ext *)(dat + sizeof(*ap)), i);
	return;

trunc:
	FUNC1((ndo, " [|rreq"));
}