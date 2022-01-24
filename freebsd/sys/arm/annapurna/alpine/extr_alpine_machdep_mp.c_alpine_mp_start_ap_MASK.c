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
typedef  scalar_t__ vm_offset_t ;
typedef  int uint32_t ;
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  platform_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int AL_CPU_RESUME_FLG_PERCPU_DONT_RESUME ; 
 int AL_CPU_RESUME_MAGIC_NUM ; 
 int AL_CPU_RESUME_MAGIC_NUM_MASK ; 
 int AL_CPU_RESUME_MIN_VER ; 
 int AL_CPU_RESUME_MIN_VER_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  AL_CPU_RESUME_WATERMARK_REG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  AL_NB_INIT_CONTROL ; 
 scalar_t__ al_devmap_pa ; 
 scalar_t__ FUNC3 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ mpentry ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 () ; 
 int FUNC13 (scalar_t__) ; 

void
FUNC14(platform_t plat)
{
	uint32_t physaddr;
	vm_offset_t vaddr;
	uint32_t val;
	uint32_t start_mask;
	u_long cpu_resume_base;
	u_long nb_base;
	u_long cpu_resume_size;
	u_long nb_size;
	bus_addr_t cpu_resume_baddr;
	bus_addr_t nb_baddr;
	int a;

	if (FUNC3(&cpu_resume_base, &cpu_resume_size))
		FUNC11("Couldn't resolve cpu_resume_base address\n");

	if (FUNC4(&nb_base, &nb_size))
		FUNC11("Couldn't resolve_nb_base address\n");

	/* Proceed with start addresses for additional CPUs */
	if (FUNC5(fdtbus_bs_tag, al_devmap_pa + cpu_resume_base,
	    cpu_resume_size, 0, &cpu_resume_baddr))
		FUNC11("Couldn't map CPU-resume area");
	if (FUNC5(fdtbus_bs_tag, al_devmap_pa + nb_base,
	    nb_size, 0, &nb_baddr))
		FUNC11("Couldn't map NB-service area");

	/* Proceed with start addresses for additional CPUs */
	val = FUNC6(fdtbus_bs_tag, cpu_resume_baddr,
	    AL_CPU_RESUME_WATERMARK_REG);
	if (((val & AL_CPU_RESUME_MAGIC_NUM_MASK) != AL_CPU_RESUME_MAGIC_NUM) ||
	    ((val & AL_CPU_RESUME_MIN_VER_MASK) < AL_CPU_RESUME_MIN_VER)) {
		FUNC11("CPU-resume device is not compatible");
	}

	vaddr = (vm_offset_t)mpentry;
	physaddr = FUNC13(vaddr);

	for (a = 1; a < FUNC12(); a++) {
		/* Power up the core */
		FUNC8(fdtbus_bs_tag, nb_baddr,
		    FUNC2(a), 0);
		FUNC10();

		/* Enable resume */
		val = FUNC6(fdtbus_bs_tag, cpu_resume_baddr,
		    FUNC0(a));
		val &= ~AL_CPU_RESUME_FLG_PERCPU_DONT_RESUME;
		FUNC8(fdtbus_bs_tag, cpu_resume_baddr,
		    FUNC0(a), val);
		FUNC10();

		/* Set resume physical address */
		FUNC8(fdtbus_bs_tag, cpu_resume_baddr,
		    FUNC1(a), physaddr);
		FUNC10();
	}

	/* Release cores from reset */
	if (FUNC5(fdtbus_bs_tag, al_devmap_pa + nb_base,
	    nb_size, 0, &nb_baddr))
		FUNC11("Couldn't map NB-service area");

	start_mask = (1 << FUNC12()) - 1;

	/* Release cores from reset */
	val = FUNC6(fdtbus_bs_tag, nb_baddr, AL_NB_INIT_CONTROL);
	val |= start_mask;
	FUNC8(fdtbus_bs_tag, nb_baddr, AL_NB_INIT_CONTROL, val);
	FUNC9();

	FUNC7(fdtbus_bs_tag, nb_baddr, nb_size);
	FUNC7(fdtbus_bs_tag, cpu_resume_baddr, cpu_resume_size);
}