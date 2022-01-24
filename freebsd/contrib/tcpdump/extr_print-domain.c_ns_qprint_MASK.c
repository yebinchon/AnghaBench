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
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int C_IN ; 
 int C_QU ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  ns_class2str ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ns_type2str ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static const u_char *
FUNC6(netdissect_options *ndo,
          register const u_char *cp, register const u_char *bp, int is_mdns)
{
	register const u_char *np = cp;
	register u_int i, class;

	cp = FUNC4(ndo, cp);

	if (cp == NULL || !FUNC2(*cp, 4))
		return(NULL);

	/* print the qtype */
	i = FUNC0(cp);
	cp += 2;
	FUNC1((ndo, " %s", FUNC5(ns_type2str, "Type%d", i)));
	/* print the qclass (if it's not IN) */
	i = FUNC0(cp);
	cp += 2;
	if (is_mdns)
		class = (i & ~C_QU);
	else
		class = i;
	if (class != C_IN)
		FUNC1((ndo, " %s", FUNC5(ns_class2str, "(Class %d)", class)));
	if (is_mdns) {
		FUNC1((ndo, i & C_QU ? " (QU)" : " (QM)"));
	}

	FUNC1((ndo, "? "));
	cp = FUNC3(ndo, np, bp);
	return(cp ? cp + 4 : NULL);
}