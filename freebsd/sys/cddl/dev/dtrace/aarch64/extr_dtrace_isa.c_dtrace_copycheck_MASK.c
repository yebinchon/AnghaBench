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
struct TYPE_2__ {uintptr_t cpuc_dtrace_illval; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_DTRACE_BADADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 uintptr_t VM_MAXUSER_ADDRESS ; 
 TYPE_1__* cpu_core ; 
 size_t curcpu ; 

__attribute__((used)) static int
FUNC1(uintptr_t uaddr, uintptr_t kaddr, size_t size)
{

	if (uaddr + size > VM_MAXUSER_ADDRESS || uaddr + size < uaddr) {
		FUNC0(CPU_DTRACE_BADADDR);
		cpu_core[curcpu].cpuc_dtrace_illval = uaddr;
		return (0);
	}

	return (1);
}