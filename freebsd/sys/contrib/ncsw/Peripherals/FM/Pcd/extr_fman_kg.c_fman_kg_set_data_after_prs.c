
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fman_kg_regs {int fmkg_fdor; } ;


 int iowrite32be (int ,int *) ;

void fman_kg_set_data_after_prs(struct fman_kg_regs *regs, uint8_t offset)
{
 iowrite32be(offset, &regs->fmkg_fdor);
}
