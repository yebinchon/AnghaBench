
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unit_regs {int dummy; } ;
struct al_udma_gen_tgtid_conf {int dummy; } ;


 int DMA_MAX_Q ;
 int al_udma_gen_tgtid_conf_queue_set (struct unit_regs*,struct al_udma_gen_tgtid_conf*,int) ;

void al_udma_gen_tgtid_conf_set(
 struct unit_regs *unit_regs,
 struct al_udma_gen_tgtid_conf *conf)
{
 int i;

 for (i = 0; i < DMA_MAX_Q; i++)
  al_udma_gen_tgtid_conf_queue_set(unit_regs, conf, i);
}
