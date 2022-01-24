#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ u_long ;
typedef  int u_int64_t ;
struct user_segment_descriptor {int dummy; } ;
struct system_segment_descriptor {int dummy; } ;
struct region_descriptor {int rd_limit; scalar_t__ rd_base; } ;
struct TYPE_5__ {long tss_ist1; long tss_ist2; long tss_ist3; long tss_ist4; scalar_t__ tss_rsp0; scalar_t__ tss_iobase; } ;
struct pcpu {int pc_pti_rsp0; int pc_pcid_gen; TYPE_1__ pc_common_tss; scalar_t__ pc_pcid_next; struct system_segment_descriptor* pc_ldt; struct user_segment_descriptor* pc_gs32p; struct user_segment_descriptor* pc_fs32p; struct system_segment_descriptor* pc_tss; struct user_segment_descriptor* pc_gdt; int /*<<< orphan*/  pc_pti_stack; scalar_t__ pc_rsp0; TYPE_1__* pc_tssp; scalar_t__ pc_curthread; struct pcpu* pc_prvspace; int /*<<< orphan*/  pc_apic_id; } ;
struct nmi_pcpu {void* np_pcpu; } ;
struct amd64tss {int dummy; } ;
typedef  void* register_t ;
typedef  int /*<<< orphan*/  gdt ;
struct TYPE_6__ {long ssd_base; } ;

/* Variables and functions */
 int CR0_CD ; 
 int CR0_EM ; 
 int CR0_NW ; 
 size_t GPROC0_SEL ; 
 int FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 size_t GUFS32_SEL ; 
 size_t GUGS32_SEL ; 
 size_t GUSERLDT_SEL ; 
 scalar_t__ IOPERM_BITMAP_SIZE ; 
 int /*<<< orphan*/  MSR_FSBASE ; 
 int /*<<< orphan*/  MSR_GSBASE ; 
 int /*<<< orphan*/  MSR_KGSBASE ; 
 int NGDT ; 
 size_t PAGE_SIZE ; 
 int PC_PTI_STACK_SZ ; 
 scalar_t__ PMAP_PCID_KERN ; 
 int /*<<< orphan*/  SEL_KPL ; 
 struct pcpu* __pcpu ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  aps_ready ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int bootAP ; 
 int /*<<< orphan*/ * cpu_apic_ids ; 
 int /*<<< orphan*/ * dbg_stack ; 
 int /*<<< orphan*/ * doublefault_stack ; 
 int /*<<< orphan*/  dpcpu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* gdt_segs ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct region_descriptor*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/ * mce_stack ; 
 int /*<<< orphan*/  mp_naps ; 
 int /*<<< orphan*/ * nmi_stack ; 
 int /*<<< orphan*/  FUNC11 (struct pcpu*,int,int) ; 
 int /*<<< orphan*/  r_idt ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,struct user_segment_descriptor*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,struct system_segment_descriptor*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 

void
FUNC17(void)
{
	struct pcpu *pc;
	struct nmi_pcpu *np;
	struct user_segment_descriptor *gdt;
	struct region_descriptor ap_gdt;
	u_int64_t cr0;
	int cpu, gsel_tss, x;

	/* Set by the startup code for us to use */
	cpu = bootAP;

	/* Update microcode before doing anything else. */
	FUNC15(cpu);

	/* Get per-cpu data and save  */
	pc = &__pcpu[cpu];

	/* prime data page for it to use */
	FUNC11(pc, cpu, sizeof(struct pcpu));
	FUNC3(dpcpu, cpu);
	pc->pc_apic_id = cpu_apic_ids[cpu];
	pc->pc_prvspace = pc;
	pc->pc_curthread = 0;
	pc->pc_tssp = &pc->pc_common_tss;
	pc->pc_rsp0 = 0;
	pc->pc_pti_rsp0 = (((vm_offset_t)&pc->pc_pti_stack +
	    PC_PTI_STACK_SZ * sizeof(uint64_t)) & ~0xful);
	gdt = pc->pc_gdt;
	pc->pc_tss = (struct system_segment_descriptor *)&gdt[GPROC0_SEL];
	pc->pc_fs32p = &gdt[GUFS32_SEL];
	pc->pc_gs32p = &gdt[GUGS32_SEL];
	pc->pc_ldt = (struct system_segment_descriptor *)&gdt[GUSERLDT_SEL];
	/* See comment in pmap_bootstrap(). */
	pc->pc_pcid_next = PMAP_PCID_KERN + 2;
	pc->pc_pcid_gen = 1;

	/* Init tss */
	pc->pc_common_tss = __pcpu[0].pc_common_tss;
	pc->pc_common_tss.tss_iobase = sizeof(struct amd64tss) +
	    IOPERM_BITMAP_SIZE;
	pc->pc_common_tss.tss_rsp0 = 0;

	pc->pc_common_tss.tss_ist1 = (long)&doublefault_stack[PAGE_SIZE];

	/* The NMI stack runs on IST2. */
	np = ((struct nmi_pcpu *) &nmi_stack[PAGE_SIZE]) - 1;
	pc->pc_common_tss.tss_ist2 = (long)np;

	/* The MC# stack runs on IST3. */
	np = ((struct nmi_pcpu *) &mce_stack[PAGE_SIZE]) - 1;
	pc->pc_common_tss.tss_ist3 = (long)np;

	/* The DB# stack runs on IST4. */
	np = ((struct nmi_pcpu *) &dbg_stack[PAGE_SIZE]) - 1;
	pc->pc_common_tss.tss_ist4 = (long)np;

	/* Prepare private GDT */
	gdt_segs[GPROC0_SEL].ssd_base = (long)&pc->pc_common_tss;
	for (x = 0; x < NGDT; x++) {
		if (x != GPROC0_SEL && x != GPROC0_SEL + 1 &&
		    x != GUSERLDT_SEL && x != GUSERLDT_SEL + 1)
			FUNC13(&gdt_segs[x], &gdt[x]);
	}
	FUNC14(&gdt_segs[GPROC0_SEL],
	    (struct system_segment_descriptor *)&gdt[GPROC0_SEL]);
	ap_gdt.rd_limit = NGDT * sizeof(gdt[0]) - 1;
	ap_gdt.rd_base = (u_long)gdt;
	FUNC7(&ap_gdt);			/* does magic intra-segment return */

	/* Save the per-cpu pointer for use by the NMI handler. */
	np = ((struct nmi_pcpu *) &nmi_stack[PAGE_SIZE]) - 1;
	np->np_pcpu = (register_t)pc;

	/* Save the per-cpu pointer for use by the MC# handler. */
	np = ((struct nmi_pcpu *) &mce_stack[PAGE_SIZE]) - 1;
	np->np_pcpu = (register_t)pc;

	/* Save the per-cpu pointer for use by the DB# handler. */
	np = ((struct nmi_pcpu *) &dbg_stack[PAGE_SIZE]) - 1;
	np->np_pcpu = (register_t)pc;

	FUNC16(MSR_FSBASE, 0);		/* User value */
	FUNC16(MSR_GSBASE, (u_int64_t)pc);
	FUNC16(MSR_KGSBASE, (u_int64_t)pc);	/* XXX User value while we're in the kernel */
	FUNC4();

	FUNC8(&r_idt);

	gsel_tss = FUNC0(GPROC0_SEL, SEL_KPL);
	FUNC10(gsel_tss);

	/*
	 * Set to a known state:
	 * Set by mpboot.s: CR0_PG, CR0_PE
	 * Set by cpu_setregs: CR0_NE, CR0_MP, CR0_TS, CR0_WP, CR0_AM
	 */
	cr0 = FUNC12();
	cr0 &= ~(CR0_CD | CR0_NW | CR0_EM);
	FUNC9(cr0);

	FUNC1();

	/* signal our startup to the BSP. */
	mp_naps++;

	/* Spin until the BSP releases the AP's. */
	while (FUNC2(&aps_ready) == 0)
		FUNC5();

	FUNC6();
}