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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ldns_rr ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3PARAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

uint8_t
FUNC4(const ldns_rr *nsec3_rr)
{
	if (nsec3_rr && 
	      (FUNC2(nsec3_rr) == LDNS_RR_TYPE_NSEC3 ||
	       FUNC2(nsec3_rr) == LDNS_RR_TYPE_NSEC3PARAM)
	    && (FUNC3(nsec3_rr, 0) != NULL)
	    && FUNC1(FUNC3(nsec3_rr, 0)) > 0) {
		return FUNC0(FUNC3(nsec3_rr, 0));
	}
	return 0;
}