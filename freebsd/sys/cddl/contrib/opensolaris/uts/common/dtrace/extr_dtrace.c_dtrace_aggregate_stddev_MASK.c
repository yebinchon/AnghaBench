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
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static void
FUNC2(uint64_t *data, uint64_t nval, uint64_t arg)
{
	int64_t snval = (int64_t)nval;
	uint64_t tmp[2];

	data[0]++;
	data[1] += nval;

	/*
	 * What we want to say here is:
	 *
	 * data[2] += nval * nval;
	 *
	 * But given that nval is 64-bit, we could easily overflow, so
	 * we do this as 128-bit arithmetic.
	 */
	if (snval < 0)
		snval = -snval;

	FUNC1((uint64_t)snval, (uint64_t)snval, tmp);
	FUNC0(data + 2, tmp, data + 2);
}