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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(void *data, uint32_t length)
{
	uint32_t	i, j;
	uint8_t		*p, *end;

	end = (uint8_t *)data + length;

	for (i = 0; i < length; i++) {
		p = (uint8_t *)data + (i*16);
		FUNC0("%03x: ", i*16);
		for (j = 0; j < 16 && p < end; j++)
			FUNC0("%02x ", *p++);
		if (p >= end)
			break;
		FUNC0("\n");
	}
	FUNC0("\n");
}