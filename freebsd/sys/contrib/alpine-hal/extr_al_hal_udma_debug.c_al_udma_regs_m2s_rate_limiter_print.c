
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_udma {int dummy; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int al_dbg (char*) ;
 int gen_cfg ;
 int m2s ;
 int m2s_rate_limiter ;

__attribute__((used)) static void al_udma_regs_m2s_rate_limiter_print(struct al_udma *udma)
{
 al_dbg("M2S rate limiter regs:\n");
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_rate_limiter, gen_cfg);
}
