
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_bmi_regs {int fmbm_cfg1; } ;


 int BMI_CFG1_FIFO_SIZE_SHIFT ;
 int FMAN_BMI_FIFO_UNITS ;
 int ioread32be (int *) ;

uint32_t fman_get_total_fifo_size(struct fman_bmi_regs *bmi_rg)
{
 uint32_t reg, res;

 reg = ioread32be(&bmi_rg->fmbm_cfg1);
 res = (reg >> BMI_CFG1_FIFO_SIZE_SHIFT) & 0x3ff;
 return res * FMAN_BMI_FIFO_UNITS;
}
