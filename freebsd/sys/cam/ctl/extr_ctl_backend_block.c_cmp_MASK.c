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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */

__attribute__((used)) static size_t
FUNC0(uint8_t *a, uint8_t *b, size_t size)
{
	size_t i;

	for (i = 0; i < size; i++) {
		if (a[i] != b[i])
			break;
	}
	return (i);
}