
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memac_regs {int statn_config; } ;


 int STATS_CFG_CLR ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_memac_reset_stat(struct memac_regs *regs)
{
    uint32_t tmp;

    tmp = ioread32be(&regs->statn_config);

    tmp |= STATS_CFG_CLR;

    iowrite32be(tmp, &regs->statn_config);

    while (ioread32be(&regs->statn_config) & STATS_CFG_CLR);
}
