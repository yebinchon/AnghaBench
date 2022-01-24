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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alpine_validate_cpu ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

__attribute__((used)) static int
FUNC4(void)
{
	static int ncores = 0;
	int nchilds;
	uint32_t reg;

	/* Calculate ncores value only once */
	if (ncores)
		return (ncores);

	reg = FUNC1();
	ncores = FUNC0(reg);

	nchilds = FUNC2(alpine_validate_cpu, false);

	/* Limit CPUs if DTS has configured less than available */
	if ((nchilds > 0) && (nchilds < ncores)) {
		FUNC3("SMP: limiting number of active CPUs to %d out of %d\n",
		    nchilds, ncores);
		ncores = nchilds;
	}

	return (ncores);
}