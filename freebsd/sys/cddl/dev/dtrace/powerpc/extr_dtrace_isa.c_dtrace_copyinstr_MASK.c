#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {uintptr_t cpuc_dtrace_illval; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_DTRACE_BADADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENAMETOOLONG ; 
 int FUNC1 (void const*,void*,size_t,size_t*) ; 
 TYPE_1__* cpu_core ; 
 size_t curcpu ; 
 scalar_t__ FUNC2 (uintptr_t,uintptr_t,size_t) ; 

void
FUNC3(uintptr_t uaddr, uintptr_t kaddr, size_t size,
    volatile uint16_t *flags)
{
	size_t actual;
	int    error;

	if (FUNC2(uaddr, kaddr, size)) {
		error = FUNC1((const void *)uaddr, (void *)kaddr,
		    size, &actual);
		
		/* ENAMETOOLONG is not a fault condition. */
		if (error && error != ENAMETOOLONG) {
			FUNC0(CPU_DTRACE_BADADDR);
			cpu_core[curcpu].cpuc_dtrace_illval = (uintptr_t)uaddr;
		}
	}
}