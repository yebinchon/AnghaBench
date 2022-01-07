
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fman_bmi_regs {int * fmbm_pp; } ;


 int BMI_NUM_OF_TASKS_MASK ;
 int BMI_NUM_OF_TASKS_SHIFT ;
 int ioread32be (int *) ;

uint8_t fman_get_num_of_tasks(struct fman_bmi_regs *bmi_rg, uint8_t port_id)
{
 uint32_t tmp;

    if ((port_id > 63) || (port_id < 1))
        return 0;

 tmp = ioread32be(&bmi_rg->fmbm_pp[port_id - 1]);
 return (uint8_t)(((tmp & BMI_NUM_OF_TASKS_MASK) >>
    BMI_NUM_OF_TASKS_SHIFT) + 1);
}
