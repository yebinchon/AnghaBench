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
typedef  scalar_t__ isc_uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 

isc_uint32_t
FUNC2(isc_uint32_t max, isc_uint32_t jitter) {
	isc_uint32_t rnd;

	FUNC0(jitter < max || (jitter == 0 && max == 0));

	if (jitter == 0)
		return (max);

	FUNC1(&rnd);
	return (max - rnd % jitter);
}