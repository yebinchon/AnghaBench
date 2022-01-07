
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_udma {int dummy; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int al_dbg (char*) ;
 int cfg_1c ;
 int cfg_2c ;
 int cfg_application_ack ;
 int s2m ;
 int s2m_comp ;

__attribute__((used)) static void al_udma_regs_s2m_comp_print(struct al_udma *udma)
{
 al_dbg("S2M completion regs:\n");
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_comp, cfg_1c);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_comp, cfg_2c);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_comp, cfg_application_ack);
}
