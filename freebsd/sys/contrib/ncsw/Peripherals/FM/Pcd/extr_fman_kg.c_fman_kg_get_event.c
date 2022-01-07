
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_kg_regs {int fmkg_seer; int fmkg_eer; int fmkg_feer; int fmkg_seeer; int fmkg_eeer; } ;


 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_kg_get_event(struct fman_kg_regs *regs,
   uint32_t *event,
   uint32_t *scheme_idx)
{
 uint32_t mask, force;

 *event = ioread32be(&regs->fmkg_eer);
 mask = ioread32be(&regs->fmkg_eeer);
 *scheme_idx = ioread32be(&regs->fmkg_seer);
 *scheme_idx &= ioread32be(&regs->fmkg_seeer);

 *event &= mask;


 force = ioread32be(&regs->fmkg_feer);
 if (force & *event)
  iowrite32be(force & ~*event ,&regs->fmkg_feer);

 iowrite32be(*event, &regs->fmkg_eer);
 iowrite32be(*scheme_idx, &regs->fmkg_seer);
}
