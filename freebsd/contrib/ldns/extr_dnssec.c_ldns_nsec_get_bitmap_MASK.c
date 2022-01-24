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
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int) ; 

ldns_rdf *
FUNC2(const ldns_rr *nsec) {
	if (FUNC0(nsec) == LDNS_RR_TYPE_NSEC) {
		return FUNC1(nsec, 1);
	} else if (FUNC0(nsec) == LDNS_RR_TYPE_NSEC3) {
		return FUNC1(nsec, 5);
	} else {
		return NULL;
	}
}