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
typedef  int /*<<< orphan*/  tsd_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,size_t const*,size_t,void*,size_t*,void*,size_t,int) ; 

__attribute__((used)) static int
FUNC1(tsd_t *tsd, const size_t *mib, size_t miblen,
    void *oldp, size_t *oldlenp, void *newp, size_t newlen) {
	return FUNC0(tsd, mib, miblen, oldp, oldlenp, newp,
	    newlen, false);
}