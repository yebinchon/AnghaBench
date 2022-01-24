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
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3PARAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int) ; 

ldns_rdf *
FUNC2(const ldns_rr *nsec3_rr)
{
	if (nsec3_rr && 
	      (FUNC0(nsec3_rr) == LDNS_RR_TYPE_NSEC3 ||
	       FUNC0(nsec3_rr) == LDNS_RR_TYPE_NSEC3PARAM)
	    ) {
		return FUNC1(nsec3_rr, 3);
	}
	return NULL;
}