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
typedef  int uint64_t ;

/* Variables and functions */

__attribute__((used)) static uint64_t FUNC0(const uint8_t *pos, int size)
{
	uint64_t val;
	int idx;

	for (val = 0, idx = 0; idx < size; ++idx) {
		uint64_t byte = *pos++;

		byte <<= (idx * 8);
		val |= byte;
	}

	return val;
}