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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(void *data, uint32_t length)
{
	uint32_t	*p;
	uint32_t	i, j;

	p = (uint32_t *)data;
	length /= sizeof(uint32_t);

	for (i = 0; i < length; i+=8) {
		FUNC0("%03x: ", i*4);
		for (j = 0; j < 8; j++)
			FUNC0("%08x ", p[i+j]);
		FUNC0("\n");
	}

	FUNC0("\n");
}