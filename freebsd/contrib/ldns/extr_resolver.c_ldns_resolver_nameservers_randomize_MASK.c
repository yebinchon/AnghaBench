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
typedef  size_t uint16_t ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 () ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ *) ; 
 size_t* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

void
FUNC6(ldns_resolver *r)
{
	uint16_t i, j;
	ldns_rdf **ns, *tmpns;
	size_t *rtt, tmprtt;

	/* should I check for ldns_resolver_random?? */
	FUNC0(r != NULL);

	ns = FUNC3(r);
	rtt = FUNC4(r);
	for (i = 0; i < FUNC2(r); i++) {
		j = FUNC1() % FUNC2(r);
		tmpns = ns[i];
		ns[i] = ns[j];
		ns[j] = tmpns;
		tmprtt = rtt[i];
		rtt[i] = rtt[j];
		rtt[j] = tmprtt;
	}
	FUNC5(r, ns);
}