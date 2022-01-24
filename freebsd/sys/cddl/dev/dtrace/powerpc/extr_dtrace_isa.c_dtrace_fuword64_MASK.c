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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  ret ;
struct TYPE_2__ {uintptr_t cpuc_dtrace_illval; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_DTRACE_BADADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void const*,void*,int) ; 
 TYPE_1__* cpu_core ; 
 size_t curcpu ; 
 scalar_t__ FUNC2 (uintptr_t,uintptr_t,int) ; 

uint64_t
FUNC3(void *uaddr)
{
	uint64_t ret = 0;

	if (FUNC2((uintptr_t)uaddr, (uintptr_t)&ret, sizeof(ret))) {
		if (FUNC1((const void *)uaddr, (void *)&ret, sizeof(ret))) {
			FUNC0(CPU_DTRACE_BADADDR);
			cpu_core[curcpu].cpuc_dtrace_illval = (uintptr_t)uaddr;
		}
	}
	return ret;
}