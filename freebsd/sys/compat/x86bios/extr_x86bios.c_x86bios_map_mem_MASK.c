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
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAT_WRITE_BACK ; 
 int X86BIOS_IVT_BASE ; 
 int X86BIOS_IVT_SIZE ; 
 scalar_t__ X86BIOS_MEM_SIZE ; 
 int X86BIOS_PAGES ; 
 int /*<<< orphan*/  X86BIOS_PAGE_SIZE ; 
 int /*<<< orphan*/  X86BIOS_RAM_BASE ; 
 int X86BIOS_ROM_BASE ; 
 int X86BIOS_ROM_SIZE ; 
 int X86BIOS_SEG_SIZE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * x86bios_ivt ; 
 int /*<<< orphan*/ * x86bios_map ; 
 int /*<<< orphan*/ * x86bios_rom ; 
 int x86bios_rom_phys ; 
 int /*<<< orphan*/ * x86bios_seg ; 
 int x86bios_seg_phys ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static __inline int
FUNC10(void)
{

	x86bios_map = FUNC1(sizeof(*x86bios_map) * X86BIOS_PAGES, M_DEVBUF,
	    M_NOWAIT | M_ZERO);
	if (x86bios_map == NULL)
		goto fail;

#ifdef X86BIOS_NATIVE_ARCH
	x86bios_ivt = pmap_mapbios(X86BIOS_IVT_BASE, X86BIOS_IVT_SIZE);

	/* Probe EBDA via BDA. */
	x86bios_rom_phys = *(uint16_t *)((caddr_t)x86bios_ivt + 0x40e);
	x86bios_rom_phys = x86bios_rom_phys << 4;
	if (x86bios_rom_phys != 0 && x86bios_rom_phys < X86BIOS_ROM_BASE &&
	    X86BIOS_ROM_BASE - x86bios_rom_phys <= 128 * 1024)
		x86bios_rom_phys =
		    rounddown(x86bios_rom_phys, X86BIOS_PAGE_SIZE);
	else
#else
	x86bios_ivt = FUNC1(X86BIOS_IVT_SIZE, M_DEVBUF, M_NOWAIT | M_ZERO);
	if (x86bios_ivt == NULL)
		goto fail;
#endif

	x86bios_rom_phys = X86BIOS_ROM_BASE;
	x86bios_rom = FUNC4(x86bios_rom_phys, X86BIOS_ROM_SIZE);
	if (x86bios_rom == NULL)
		goto fail;
#ifdef X86BIOS_NATIVE_ARCH
	/* Change attribute for EBDA. */
	if (x86bios_rom_phys < X86BIOS_ROM_BASE &&
	    pmap_change_attr((vm_offset_t)x86bios_rom,
	    X86BIOS_ROM_BASE - x86bios_rom_phys, PAT_WRITE_BACK) != 0)
		goto fail;
#endif

	x86bios_seg = FUNC0(X86BIOS_SEG_SIZE, M_DEVBUF, M_NOWAIT,
	    X86BIOS_RAM_BASE, x86bios_rom_phys, X86BIOS_PAGE_SIZE, 0);
	if (x86bios_seg == NULL)
	    goto fail;
	x86bios_seg_phys = FUNC7(x86bios_seg);

	FUNC8((vm_offset_t)x86bios_ivt, X86BIOS_IVT_BASE,
	    X86BIOS_IVT_SIZE);
	FUNC8((vm_offset_t)x86bios_rom, x86bios_rom_phys,
	    X86BIOS_ROM_SIZE);
	FUNC8((vm_offset_t)x86bios_seg, x86bios_seg_phys,
	    X86BIOS_SEG_SIZE);

	if (bootverbose) {
		FUNC5("x86bios:  IVT 0x%06jx-0x%06jx at %p\n",
		    (vm_paddr_t)X86BIOS_IVT_BASE,
		    (vm_paddr_t)X86BIOS_IVT_SIZE + X86BIOS_IVT_BASE - 1,
		    x86bios_ivt);
		FUNC5("x86bios: SSEG 0x%06jx-0x%06jx at %p\n",
		    x86bios_seg_phys,
		    (vm_paddr_t)X86BIOS_SEG_SIZE + x86bios_seg_phys - 1,
		    x86bios_seg);
		if (x86bios_rom_phys < X86BIOS_ROM_BASE)
			FUNC5("x86bios: EBDA 0x%06jx-0x%06jx at %p\n",
			    x86bios_rom_phys, (vm_paddr_t)X86BIOS_ROM_BASE - 1,
			    x86bios_rom);
		FUNC5("x86bios:  ROM 0x%06jx-0x%06jx at %p\n",
		    (vm_paddr_t)X86BIOS_ROM_BASE,
		    (vm_paddr_t)X86BIOS_MEM_SIZE - X86BIOS_SEG_SIZE - 1,
		    (caddr_t)x86bios_rom + X86BIOS_ROM_BASE - x86bios_rom_phys);
	}

	return (0);

fail:
	FUNC9();

	return (1);
}