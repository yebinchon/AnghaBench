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
 int /*<<< orphan*/  cntpct ; 
 int /*<<< orphan*/  cntvct ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static uint64_t
FUNC2(bool physical)
{
	uint64_t val
;
	FUNC1();
	if (physical) {
		do {
			val = FUNC0(cntpct);
		}
		while (((val + 1) & 0x7FF) <= 1);
	}
	else {
		do {
			val = FUNC0(cntvct);
		}
		while (((val + 1) & 0x7FF) <= 1);
	}

	return (val);
}