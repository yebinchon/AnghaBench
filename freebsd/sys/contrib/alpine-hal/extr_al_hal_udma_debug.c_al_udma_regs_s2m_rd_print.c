
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_udma {int dummy; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int al_dbg (char*) ;
 int desc_pref_cfg_1 ;
 int desc_pref_cfg_2 ;
 int desc_pref_cfg_3 ;
 int desc_pref_cfg_4 ;
 int s2m ;
 int s2m_rd ;

__attribute__((used)) static void al_udma_regs_s2m_rd_print(struct al_udma *udma)
{
 al_dbg("S2M read regs:\n");
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_rd, desc_pref_cfg_1);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_rd, desc_pref_cfg_2);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_rd, desc_pref_cfg_3);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_rd, desc_pref_cfg_4);
}
