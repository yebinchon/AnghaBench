
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_kg_regs {int fmkg_tpc; } ;


 int ioread32be (int *) ;

uint32_t fman_kg_get_schemes_total_counter(struct fman_kg_regs *regs)
{
    return ioread32be(&regs->fmkg_tpc);
}
