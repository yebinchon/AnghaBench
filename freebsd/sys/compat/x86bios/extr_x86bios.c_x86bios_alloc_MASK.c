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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  X86BIOS_PAGE_SIZE ; 
 int /*<<< orphan*/  X86BIOS_RAM_BASE ; 
 void* FUNC0 (size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  x86bios_lock ; 
 int /*<<< orphan*/  x86bios_rom_phys ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

void *
FUNC5(uint32_t *offset, size_t size, int flags)
{
	void *vaddr;

	if (offset == NULL || size == 0)
		return (NULL);
	vaddr = FUNC0(size, M_DEVBUF, flags, X86BIOS_RAM_BASE,
	    x86bios_rom_phys, X86BIOS_PAGE_SIZE, 0);
	if (vaddr != NULL) {
		*offset = FUNC3(vaddr);
		FUNC1(&x86bios_lock);
		FUNC4((vm_offset_t)vaddr, *offset, size);
		FUNC2(&x86bios_lock);
	}

	return (vaddr);
}