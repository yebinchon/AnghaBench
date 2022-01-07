
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {int pc_smp_tlb_done; int pc_tss; int pc_ldt; int pc_gs32p; int pc_saved_ucr3; int pc_ucr3; int pc_kcr3; int pc_rsp0; int pc_tssp; int pc_curpmap; int pc_prvspace; } ;


 int db_printf (char*,int ) ;

void
db_show_mdpcpu(struct pcpu *pc)
{

 db_printf("self         = %p\n", pc->pc_prvspace);
 db_printf("curpmap      = %p\n", pc->pc_curpmap);
 db_printf("tssp         = %p\n", pc->pc_tssp);
 db_printf("rsp0         = 0x%lx\n", pc->pc_rsp0);
 db_printf("kcr3         = 0x%lx\n", pc->pc_kcr3);
 db_printf("ucr3         = 0x%lx\n", pc->pc_ucr3);
 db_printf("scr3         = 0x%lx\n", pc->pc_saved_ucr3);
 db_printf("gs32p        = %p\n", pc->pc_gs32p);
 db_printf("ldt          = %p\n", pc->pc_ldt);
 db_printf("tss          = %p\n", pc->pc_tss);
 db_printf("tlb gen      = %u\n", pc->pc_smp_tlb_done);
}
