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
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool
FUNC3(ldns_rr *r, ldns_rdf *f)
{
	/* 2 types to check, cannot use the macro... */
	ldns_rdf *pop;
	if (!r || (FUNC1(r) != LDNS_RR_TYPE_A &&
			FUNC1(r) != LDNS_RR_TYPE_AAAA)) {
		return false;
	}
	pop = FUNC2(r, f, 0);
	if (pop) {
		FUNC0(pop);
		return true;
	} else {
		return false;
	}
}