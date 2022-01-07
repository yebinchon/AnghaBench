
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint64_t ;
typedef scalar_t__ u_long ;
typedef int u_int64_t ;
struct user_segment_descriptor {int dummy; } ;
struct system_segment_descriptor {int dummy; } ;
struct region_descriptor {int rd_limit; scalar_t__ rd_base; } ;
struct TYPE_5__ {long tss_ist1; long tss_ist2; long tss_ist3; long tss_ist4; scalar_t__ tss_rsp0; scalar_t__ tss_iobase; } ;
struct pcpu {int pc_pti_rsp0; int pc_pcid_gen; TYPE_1__ pc_common_tss; scalar_t__ pc_pcid_next; struct system_segment_descriptor* pc_ldt; struct user_segment_descriptor* pc_gs32p; struct user_segment_descriptor* pc_fs32p; struct system_segment_descriptor* pc_tss; struct user_segment_descriptor* pc_gdt; int pc_pti_stack; scalar_t__ pc_rsp0; TYPE_1__* pc_tssp; scalar_t__ pc_curthread; struct pcpu* pc_prvspace; int pc_apic_id; } ;
struct nmi_pcpu {void* np_pcpu; } ;
struct amd64tss {int dummy; } ;
typedef void* register_t ;
typedef int gdt ;
struct TYPE_6__ {long ssd_base; } ;


 int CR0_CD ;
 int CR0_EM ;
 int CR0_NW ;
 size_t GPROC0_SEL ;
 int GSEL (size_t,int ) ;
 size_t GUFS32_SEL ;
 size_t GUGS32_SEL ;
 size_t GUSERLDT_SEL ;
 scalar_t__ IOPERM_BITMAP_SIZE ;
 int MSR_FSBASE ;
 int MSR_GSBASE ;
 int MSR_KGSBASE ;
 int NGDT ;
 size_t PAGE_SIZE ;
 int PC_PTI_STACK_SZ ;
 scalar_t__ PMAP_PCID_KERN ;
 int SEL_KPL ;
 struct pcpu* __pcpu ;
 int amd64_conf_fast_syscall () ;
 int aps_ready ;
 scalar_t__ atomic_load_acq_int (int *) ;
 int bootAP ;
 int * cpu_apic_ids ;
 int * dbg_stack ;
 int * doublefault_stack ;
 int dpcpu ;
 int dpcpu_init (int ,int) ;
 int fix_cpuid () ;
 TYPE_2__* gdt_segs ;
 int ia32_pause () ;
 int init_secondary_tail () ;
 int lgdt (struct region_descriptor*) ;
 int lidt (int *) ;
 int load_cr0 (int) ;
 int ltr (int) ;
 int * mce_stack ;
 int mp_naps ;
 int * nmi_stack ;
 int pcpu_init (struct pcpu*,int,int) ;
 int r_idt ;
 int rcr0 () ;
 int ssdtosd (TYPE_2__*,struct user_segment_descriptor*) ;
 int ssdtosyssd (TYPE_2__*,struct system_segment_descriptor*) ;
 int ucode_load_ap (int) ;
 int wrmsr (int ,int) ;

void
init_secondary(void)
{
 struct pcpu *pc;
 struct nmi_pcpu *np;
 struct user_segment_descriptor *gdt;
 struct region_descriptor ap_gdt;
 u_int64_t cr0;
 int cpu, gsel_tss, x;


 cpu = bootAP;


 ucode_load_ap(cpu);


 pc = &__pcpu[cpu];


 pcpu_init(pc, cpu, sizeof(struct pcpu));
 dpcpu_init(dpcpu, cpu);
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

 pc->pc_pcid_next = PMAP_PCID_KERN + 2;
 pc->pc_pcid_gen = 1;


 pc->pc_common_tss = __pcpu[0].pc_common_tss;
 pc->pc_common_tss.tss_iobase = sizeof(struct amd64tss) +
     IOPERM_BITMAP_SIZE;
 pc->pc_common_tss.tss_rsp0 = 0;

 pc->pc_common_tss.tss_ist1 = (long)&doublefault_stack[PAGE_SIZE];


 np = ((struct nmi_pcpu *) &nmi_stack[PAGE_SIZE]) - 1;
 pc->pc_common_tss.tss_ist2 = (long)np;


 np = ((struct nmi_pcpu *) &mce_stack[PAGE_SIZE]) - 1;
 pc->pc_common_tss.tss_ist3 = (long)np;


 np = ((struct nmi_pcpu *) &dbg_stack[PAGE_SIZE]) - 1;
 pc->pc_common_tss.tss_ist4 = (long)np;


 gdt_segs[GPROC0_SEL].ssd_base = (long)&pc->pc_common_tss;
 for (x = 0; x < NGDT; x++) {
  if (x != GPROC0_SEL && x != GPROC0_SEL + 1 &&
      x != GUSERLDT_SEL && x != GUSERLDT_SEL + 1)
   ssdtosd(&gdt_segs[x], &gdt[x]);
 }
 ssdtosyssd(&gdt_segs[GPROC0_SEL],
     (struct system_segment_descriptor *)&gdt[GPROC0_SEL]);
 ap_gdt.rd_limit = NGDT * sizeof(gdt[0]) - 1;
 ap_gdt.rd_base = (u_long)gdt;
 lgdt(&ap_gdt);


 np = ((struct nmi_pcpu *) &nmi_stack[PAGE_SIZE]) - 1;
 np->np_pcpu = (register_t)pc;


 np = ((struct nmi_pcpu *) &mce_stack[PAGE_SIZE]) - 1;
 np->np_pcpu = (register_t)pc;


 np = ((struct nmi_pcpu *) &dbg_stack[PAGE_SIZE]) - 1;
 np->np_pcpu = (register_t)pc;

 wrmsr(MSR_FSBASE, 0);
 wrmsr(MSR_GSBASE, (u_int64_t)pc);
 wrmsr(MSR_KGSBASE, (u_int64_t)pc);
 fix_cpuid();

 lidt(&r_idt);

 gsel_tss = GSEL(GPROC0_SEL, SEL_KPL);
 ltr(gsel_tss);






 cr0 = rcr0();
 cr0 &= ~(CR0_CD | CR0_NW | CR0_EM);
 load_cr0(cr0);

 amd64_conf_fast_syscall();


 mp_naps++;


 while (atomic_load_acq_int(&aps_ready) == 0)
  ia32_pause();

 init_secondary_tail();
}
