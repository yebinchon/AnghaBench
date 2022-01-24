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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 

int
FUNC2(const void *a, const void *b)
{
	const ldns_rr *rr1 = * (const ldns_rr **) a;
	const ldns_rr *rr2 = * (const ldns_rr **) b;
	if (rr1 == NULL && rr2 == NULL) {
		return 0;
	}
	if (rr1 == NULL) {
		return -1;
	}
	if (rr2 == NULL) {
		return 1;
	}
	return FUNC0(FUNC1(rr1), FUNC1(rr2));
}