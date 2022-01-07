
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fman_bmi_regs {int fmbm_cfg2; int * fmbm_pp; } ;


 int BMI_CFG2_DMAS_MASK ;
 int BMI_CFG2_DMAS_SHIFT ;
 int BMI_EXTRA_NUM_OF_DMAS_SHIFT ;
 int BMI_NUM_OF_DMAS_MASK ;
 int BMI_NUM_OF_DMAS_SHIFT ;
 int BMI_NUM_OF_EXTRA_DMAS_MASK ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_set_num_of_open_dmas(struct fman_bmi_regs *bmi_rg,
    uint8_t port_id,
    uint8_t num_open_dmas,
    uint8_t num_extra_open_dmas,
    uint8_t total_num_dmas)
{
 uint32_t tmp = 0;

 if ((port_id > 63) || (port_id < 1))
     return;


 tmp = ioread32be(&bmi_rg->fmbm_pp[port_id - 1]) &
   ~(BMI_NUM_OF_DMAS_MASK | BMI_NUM_OF_EXTRA_DMAS_MASK);
 tmp |= (uint32_t)(((num_open_dmas-1) << BMI_NUM_OF_DMAS_SHIFT) |
   (num_extra_open_dmas << BMI_EXTRA_NUM_OF_DMAS_SHIFT));
 iowrite32be(tmp, &bmi_rg->fmbm_pp[port_id - 1]);



    if (total_num_dmas)
    {
        tmp = ioread32be(&bmi_rg->fmbm_cfg2) & ~BMI_CFG2_DMAS_MASK;
        tmp |= (uint32_t)(total_num_dmas - 1) << BMI_CFG2_DMAS_SHIFT;
        iowrite32be(tmp, &bmi_rg->fmbm_cfg2);
    }
}
