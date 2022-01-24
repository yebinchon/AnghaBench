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
typedef  size_t u_int ;
struct sbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id_aa64afr1; int /*<<< orphan*/  id_aa64afr0; int /*<<< orphan*/  id_aa64dfr1; int /*<<< orphan*/  id_aa64dfr0; int /*<<< orphan*/  id_aa64mmfr2; int /*<<< orphan*/  id_aa64mmfr1; int /*<<< orphan*/  id_aa64mmfr0; int /*<<< orphan*/  id_aa64pfr1; int /*<<< orphan*/  id_aa64pfr0; int /*<<< orphan*/  id_aa64isar1; int /*<<< orphan*/  id_aa64isar0; int /*<<< orphan*/  mpidr; int /*<<< orphan*/  cpu_revision; int /*<<< orphan*/  cpu_variant; int /*<<< orphan*/  cpu_part_name; int /*<<< orphan*/  cpu_impl_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ CPU_MATCH_ERRATA_CAVIUM_THUNDERX_1_1 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int PRINT_ID_AA64_AFR0 ; 
 int PRINT_ID_AA64_AFR1 ; 
 int PRINT_ID_AA64_DFR0 ; 
 int PRINT_ID_AA64_DFR1 ; 
 int PRINT_ID_AA64_ISAR0 ; 
 int PRINT_ID_AA64_ISAR1 ; 
 int PRINT_ID_AA64_MMFR0 ; 
 int PRINT_ID_AA64_MMFR1 ; 
 int PRINT_ID_AA64_MMFR2 ; 
 int PRINT_ID_AA64_PFR0 ; 
 int PRINT_ID_AA64_PFR1 ; 
 int cpu_aff_levels ; 
 TYPE_1__* cpu_desc ; 
 int cpu_print_regs ; 
 int /*<<< orphan*/  id_aa64afr0_fields ; 
 int /*<<< orphan*/  id_aa64afr1_fields ; 
 int /*<<< orphan*/  id_aa64dfr0_fields ; 
 int /*<<< orphan*/  id_aa64dfr1_fields ; 
 int /*<<< orphan*/  id_aa64isar0_fields ; 
 int /*<<< orphan*/  id_aa64isar1_fields ; 
 int /*<<< orphan*/  id_aa64mmfr0_fields ; 
 int /*<<< orphan*/  id_aa64mmfr1_fields ; 
 int /*<<< orphan*/  id_aa64mmfr2_fields ; 
 int /*<<< orphan*/  id_aa64pfr0_fields ; 
 int /*<<< orphan*/  id_aa64pfr1_fields ; 
 int /*<<< orphan*/  midr ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*) ; 
 char* FUNC10 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct sbuf*) ; 
 struct sbuf* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct sbuf*,char*,size_t,...) ; 

__attribute__((used)) static void
FUNC15(u_int cpu)
{
	struct sbuf *sb;

	sb = FUNC13();
	FUNC14(sb, "CPU%3d: %s %s r%dp%d", cpu,
	    cpu_desc[cpu].cpu_impl_name, cpu_desc[cpu].cpu_part_name,
	    cpu_desc[cpu].cpu_variant, cpu_desc[cpu].cpu_revision);

	FUNC8(sb, " affinity:");
	switch(cpu_aff_levels) {
	default:
	case 4:
		FUNC14(sb, " %2d", FUNC3(cpu_desc[cpu].mpidr));
		/* FALLTHROUGH */
	case 3:
		FUNC14(sb, " %2d", FUNC2(cpu_desc[cpu].mpidr));
		/* FALLTHROUGH */
	case 2:
		FUNC14(sb, " %2d", FUNC1(cpu_desc[cpu].mpidr));
		/* FALLTHROUGH */
	case 1:
	case 0: /* On UP this will be zero */
		FUNC14(sb, " %2d", FUNC0(cpu_desc[cpu].mpidr));
		break;
	}
	FUNC12(sb);
	FUNC7("%s\n", FUNC10(sb));
	FUNC9(sb);

	/*
	 * There is a hardware errata where, if one CPU is performing a TLB
	 * invalidation while another is performing a store-exclusive the
	 * store-exclusive may return the wrong status. A workaround seems
	 * to be to use an IPI to invalidate on each CPU, however given the
	 * limited number of affected units (pass 1.1 is the evaluation
	 * hardware revision), and the lack of information from Cavium
	 * this has not been implemented.
	 *
	 * At the time of writing this the only information is from:
	 * https://lkml.org/lkml/2016/8/4/722
	 */
	/*
	 * XXX: CPU_MATCH_ERRATA_CAVIUM_THUNDERX_1_1 on its own also
	 * triggers on pass 2.0+.
	 */
	if (cpu == 0 && FUNC4(FUNC5(midr)) == 0 &&
	    CPU_MATCH_ERRATA_CAVIUM_THUNDERX_1_1)
		FUNC7("WARNING: ThunderX Pass 1.1 detected.\nThis has known "
		    "hardware bugs that may cause the incorrect operation of "
		    "atomic operations.\n");

	/* AArch64 Instruction Set Attribute Register 0 */
	if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_ISAR0) != 0)
		FUNC6(sb, "Instruction Set Attributes 0",
		    cpu_desc[cpu].id_aa64isar0, id_aa64isar0_fields);

	/* AArch64 Instruction Set Attribute Register 1 */
	if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_ISAR1) != 0)
		FUNC6(sb, "Instruction Set Attributes 1",
		    cpu_desc[cpu].id_aa64isar1, id_aa64isar1_fields);

	/* AArch64 Processor Feature Register 0 */
	if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_PFR0) != 0)
		FUNC6(sb, "Processor Features 0",
		    cpu_desc[cpu].id_aa64pfr0, id_aa64pfr0_fields);

	/* AArch64 Processor Feature Register 1 */
	if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_PFR1) != 0)
		FUNC6(sb, "Processor Features 1",
		    cpu_desc[cpu].id_aa64pfr1, id_aa64pfr1_fields);

	/* AArch64 Memory Model Feature Register 0 */
	if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_MMFR0) != 0)
		FUNC6(sb, "Memory Model Features 0",
		    cpu_desc[cpu].id_aa64mmfr0, id_aa64mmfr0_fields);

	/* AArch64 Memory Model Feature Register 1 */
	if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_MMFR1) != 0)
		FUNC6(sb, "Memory Model Features 1",
		    cpu_desc[cpu].id_aa64mmfr1, id_aa64mmfr1_fields);

	/* AArch64 Memory Model Feature Register 2 */
	if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_MMFR2) != 0)
		FUNC6(sb, "Memory Model Features 2",
		    cpu_desc[cpu].id_aa64mmfr2, id_aa64mmfr2_fields);

	/* AArch64 Debug Feature Register 0 */
	if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_DFR0) != 0)
		FUNC6(sb, "Debug Features 0",
		    cpu_desc[cpu].id_aa64dfr0, id_aa64dfr0_fields);

	/* AArch64 Memory Model Feature Register 1 */
	if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_DFR1) != 0)
		FUNC6(sb, "Debug Features 1",
		    cpu_desc[cpu].id_aa64dfr1, id_aa64dfr1_fields);

	/* AArch64 Auxiliary Feature Register 0 */
	if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_AFR0) != 0)
		FUNC6(sb, "Auxiliary Features 0",
		    cpu_desc[cpu].id_aa64afr0, id_aa64afr0_fields);

	/* AArch64 Auxiliary Feature Register 1 */
	if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_AFR1) != 0)
		FUNC6(sb, "Auxiliary Features 1",
		    cpu_desc[cpu].id_aa64afr1, id_aa64afr1_fields);

	FUNC11(sb);
	sb = NULL;
#undef SEP_STR
}