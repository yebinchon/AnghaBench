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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct vmmap {int /*<<< orphan*/  vm_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vmmap* FUNC2 (void*) ; 

void
FUNC3(void *addr)
{
	struct vmmap *vmmap;

	vmmap = FUNC2(addr);
	if (vmmap == NULL)
		return;
#if defined(__i386__) || defined(__amd64__) || defined(__powerpc__) || defined(__aarch64__)
	FUNC1((vm_offset_t)addr, vmmap->vm_size);
#endif
	FUNC0(vmmap);
}