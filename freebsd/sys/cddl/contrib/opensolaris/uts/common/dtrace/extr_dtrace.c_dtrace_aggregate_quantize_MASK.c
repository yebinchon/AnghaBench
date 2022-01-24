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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int DTRACE_QUANTIZE_NBUCKETS ; 
 int DTRACE_QUANTIZE_ZEROBUCKET ; 

__attribute__((used)) static void
FUNC2(uint64_t *quanta, uint64_t nval, uint64_t incr)
{
	int i, zero = DTRACE_QUANTIZE_ZEROBUCKET;
	int64_t val = (int64_t)nval;

	if (val < 0) {
		for (i = 0; i < zero; i++) {
			if (val <= FUNC1(i)) {
				quanta[i] += incr;
				return;
			}
		}
	} else {
		for (i = zero + 1; i < DTRACE_QUANTIZE_NBUCKETS; i++) {
			if (val < FUNC1(i)) {
				quanta[i - 1] += incr;
				return;
			}
		}

		quanta[DTRACE_QUANTIZE_NBUCKETS - 1] += incr;
		return;
	}

	FUNC0(0);
}