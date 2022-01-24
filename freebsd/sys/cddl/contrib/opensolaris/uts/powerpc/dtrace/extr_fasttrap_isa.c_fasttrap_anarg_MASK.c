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
typedef  int /*<<< orphan*/  uint32_t ;
struct reg {scalar_t__* fixreg; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int CPU_DTRACE_BADADDR ; 
 int CPU_DTRACE_NOFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SV_ILP32 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * curproc ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 

__attribute__((used)) static uint64_t
FUNC5(struct reg *rp, int argno)
{
	uint64_t value;
	proc_t  *p = curproc;

	/* The first 8 arguments are in registers. */
	if (argno < 8)
		return rp->fixreg[argno + 3];

	/* Arguments on stack start after SP+LR (2 register slots). */
	if (FUNC2(p, SV_ILP32)) {
		FUNC1(CPU_DTRACE_NOFAULT);
		value = FUNC3((void *)(rp->fixreg[1] + 8 +
		    ((argno - 8) * sizeof(uint32_t))));
		FUNC0(CPU_DTRACE_NOFAULT | CPU_DTRACE_BADADDR);
	} else {
		FUNC1(CPU_DTRACE_NOFAULT);
		value = FUNC4((void *)(rp->fixreg[1] + 48 +
		    ((argno - 8) * sizeof(uint64_t))));
		FUNC0(CPU_DTRACE_NOFAULT | CPU_DTRACE_BADADDR);
	}
	return value;
}