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
typedef  int uint64_t ;

/* Variables and functions */
 int UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,...) ; 

__attribute__((used)) static bool
FUNC2(uint64_t dividend, uint64_t divisor, char str[6]) {
	if (divisor == 0 || dividend > divisor) {
		/* The rate is not supposed to be greater than 1. */
		return true;
	}
	if (dividend > 0) {
		FUNC0(UINT64_MAX / dividend >= 1000);
	}

	unsigned n = (unsigned)((dividend * 1000) / divisor);
	if (n < 10) {
		FUNC1(str, 6, "0.00%u", n);
	} else if (n < 100) {
		FUNC1(str, 6, "0.0%u", n);
	} else if (n < 1000) {
		FUNC1(str, 6, "0.%u", n);
	} else {
		FUNC1(str, 6, "1");
	}

	return false;
}