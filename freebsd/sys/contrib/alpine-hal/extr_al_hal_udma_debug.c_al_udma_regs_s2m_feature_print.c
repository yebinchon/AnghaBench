
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_udma {int dummy; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int al_dbg (char*) ;
 int reg_1 ;
 int reg_3 ;
 int reg_4 ;
 int reg_5 ;
 int reg_6 ;
 int s2m ;
 int s2m_feature ;

__attribute__((used)) static void al_udma_regs_s2m_feature_print(struct al_udma *udma)
{
 al_dbg("S2M feature regs:\n");
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_feature, reg_1);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_feature, reg_3);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_feature, reg_4);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_feature, reg_5);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_feature, reg_6);
}
