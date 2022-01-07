
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dtsec_regs {int imask; int ecntrl; int cam2; int cam1; } ;
typedef enum dtsec_stat_level { ____Placeholder_dtsec_stat_level } dtsec_stat_level ;


 int CAM1_ERRORS_ONLY ;
 int CAM1_MIB_GRP_1 ;
 int CAM2_ERRORS_ONLY ;
 int CAM2_MIB_GRP_1 ;
 int DTSEC_ECNTRL_STEN ;
 int DTSEC_IMASK_MSROEN ;
 int EINVAL ;




 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

int fman_dtsec_set_stat_level(struct dtsec_regs *regs, enum dtsec_stat_level level)
{
 switch (level) {
 case 129:
  iowrite32be(0xffffffff, &regs->cam1);
  iowrite32be(0xffffffff, &regs->cam2);
  iowrite32be(ioread32be(&regs->ecntrl) & ~DTSEC_ECNTRL_STEN,
    &regs->ecntrl);
  iowrite32be(ioread32be(&regs->imask) & ~DTSEC_IMASK_MSROEN,
    &regs->imask);
  break;
 case 128:
  iowrite32be(CAM1_ERRORS_ONLY, &regs->cam1);
  iowrite32be(CAM2_ERRORS_ONLY, &regs->cam2);
  iowrite32be(ioread32be(&regs->ecntrl) | DTSEC_ECNTRL_STEN,
    &regs->ecntrl);
  iowrite32be(ioread32be(&regs->imask) | DTSEC_IMASK_MSROEN,
    &regs->imask);
  break;
 case 130:
  iowrite32be((uint32_t)~CAM1_MIB_GRP_1, &regs->cam1);
  iowrite32be((uint32_t)~CAM2_MIB_GRP_1, &regs->cam2);
  iowrite32be(ioread32be(&regs->ecntrl) | DTSEC_ECNTRL_STEN,
    &regs->ecntrl);
  iowrite32be(ioread32be(&regs->imask) | DTSEC_IMASK_MSROEN,
    &regs->imask);
  break;
 case 131:
  iowrite32be(0, &regs->cam1);
  iowrite32be(0, &regs->cam2);
  iowrite32be(ioread32be(&regs->ecntrl) | DTSEC_ECNTRL_STEN,
    &regs->ecntrl);
  iowrite32be(ioread32be(&regs->imask) | DTSEC_IMASK_MSROEN,
    &regs->imask);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
