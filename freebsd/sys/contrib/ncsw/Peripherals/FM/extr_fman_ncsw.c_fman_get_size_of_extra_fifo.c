
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct fman_bmi_regs {int * fmbm_pfs; } ;


 int BMI_EXTRA_FIFO_SIZE_MASK ;
 int BMI_EXTRA_FIFO_SIZE_SHIFT ;
 int ioread32be (int *) ;

uint16_t fman_get_size_of_extra_fifo(struct fman_bmi_regs *bmi_rg,
     uint8_t port_id)
{
 uint32_t tmp_reg;

    if ((port_id > 63) || (port_id < 1))
            return 0;

 tmp_reg = ioread32be(&bmi_rg->fmbm_pfs[port_id-1]);
 return (uint16_t)((tmp_reg & BMI_EXTRA_FIFO_SIZE_MASK) >>
    BMI_EXTRA_FIFO_SIZE_SHIFT);
}
