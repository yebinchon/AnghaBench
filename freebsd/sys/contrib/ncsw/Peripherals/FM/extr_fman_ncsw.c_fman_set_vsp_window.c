
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fman_bmi_regs {int * fmbm_spliodn; } ;


 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_set_vsp_window(struct fman_bmi_regs *bmi_rg,
             uint8_t port_id,
             uint8_t base_storage_profile,
             uint8_t log2_num_of_profiles)
{
 uint32_t tmp = 0;
 if ((port_id > 63) || (port_id < 1))
     return;

    tmp = ioread32be(&bmi_rg->fmbm_spliodn[port_id-1]);
    tmp |= (uint32_t)((uint32_t)base_storage_profile & 0x3f) << 16;
    tmp |= (uint32_t)log2_num_of_profiles << 28;
    iowrite32be(tmp, &bmi_rg->fmbm_spliodn[port_id-1]);
}
