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
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int cell_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int acells ; 
 int /*<<< orphan*/  memory ; 
 int scells ; 

uint64_t
FUNC2(void)
{
	phandle_t	memoryp;
	cell_t		reg[24];
	int		i, sz;
	uint64_t	memsz;

	memsz = 0;
	memoryp = FUNC1(memory);

	sz = FUNC0(memoryp, "reg", &reg, sizeof(reg));
	sz /= sizeof(reg[0]);

	for (i = 0; i < sz; i += (acells + scells)) {
		if (scells > 1)
			memsz += (uint64_t)reg[i + acells] << 32;
		memsz += reg[i + acells + scells - 1];
	}

	return (memsz);
}