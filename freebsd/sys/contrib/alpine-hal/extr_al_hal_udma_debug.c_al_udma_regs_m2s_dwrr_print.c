
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_udma {int dummy; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int al_dbg (char*) ;
 int cfg_sched ;
 int m2s ;
 int m2s_dwrr ;

__attribute__((used)) static void al_udma_regs_m2s_dwrr_print(struct al_udma *udma)
{
 al_dbg("M2S DWRR regs:\n");
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_dwrr, cfg_sched);
}
