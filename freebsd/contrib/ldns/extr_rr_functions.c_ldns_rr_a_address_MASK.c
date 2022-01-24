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
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

ldns_rdf *
FUNC2(const ldns_rr *r)
{
	/* 2 types to check, cannot use the macro */
	if (!r || (FUNC0(r) != LDNS_RR_TYPE_A &&
			FUNC0(r) != LDNS_RR_TYPE_AAAA)) {
		return NULL;
	}
	return FUNC1(r, 0);
}