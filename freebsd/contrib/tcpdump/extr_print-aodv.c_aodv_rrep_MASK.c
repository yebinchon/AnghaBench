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
struct aodv_rrep {int rrep_type; int rrep_ps; int /*<<< orphan*/  rrep_life; int /*<<< orphan*/  rrep_oa; int /*<<< orphan*/  rrep_ds; int /*<<< orphan*/  rrep_da; int /*<<< orphan*/  rrep_hops; } ;
struct aodv_ext {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct aodv_rrep const) ; 
 int RREP_ACK ; 
 int RREP_PREFIX_MASK ; 
 int RREP_REPAIR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct aodv_ext const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo, const u_char *dat, u_int length)
{
	u_int i;
	const struct aodv_rrep *ap = (const struct aodv_rrep *)dat;

	FUNC2(*ap);
	if (length < sizeof(*ap))
		goto trunc;
	FUNC1((ndo, " rrep %u %s%sprefix %u hops %u\n"
	    "\tdst %s dseq %lu src %s %lu ms", length,
	    ap->rrep_type & RREP_REPAIR ? "[R]" : "",
	    ap->rrep_type & RREP_ACK ? "[A] " : " ",
	    ap->rrep_ps & RREP_PREFIX_MASK,
	    ap->rrep_hops,
	    FUNC4(ndo, &ap->rrep_da),
	    (unsigned long)FUNC0(&ap->rrep_ds),
	    FUNC4(ndo, &ap->rrep_oa),
	    (unsigned long)FUNC0(&ap->rrep_life)));
	i = length - sizeof(*ap);
	if (i >= sizeof(struct aodv_ext))
		FUNC3(ndo, (const struct aodv_ext *)(dat + sizeof(*ap)), i);
	return;

trunc:
	FUNC1((ndo, " [|rreq"));
}