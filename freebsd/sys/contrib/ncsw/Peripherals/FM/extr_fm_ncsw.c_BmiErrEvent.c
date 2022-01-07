
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int h_App; int (* f_Exception ) (int ,int ) ;struct fman_bmi_regs* p_FmBmiRegs; } ;
typedef TYPE_1__ t_Fm ;
struct fman_bmi_regs {int dummy; } ;


 int BMI_ERR_INTR_EN_DISPATCH_RAM_ECC ;
 int BMI_ERR_INTR_EN_LIST_RAM_ECC ;
 int BMI_ERR_INTR_EN_STATISTICS_RAM_ECC ;
 int BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC ;
 int e_FM_EX_BMI_DISPATCH_RAM_ECC ;
 int e_FM_EX_BMI_LIST_RAM_ECC ;
 int e_FM_EX_BMI_STATISTICS_RAM_ECC ;
 int e_FM_EX_BMI_STORAGE_PROFILE_ECC ;
 int fman_get_bmi_err_event (struct fman_bmi_regs*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;

__attribute__((used)) static void BmiErrEvent(t_Fm *p_Fm)
{
    uint32_t event;
    struct fman_bmi_regs *bmi_rg = p_Fm->p_FmBmiRegs;


    event = fman_get_bmi_err_event(bmi_rg);

    if (event & BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC)
        p_Fm->f_Exception(p_Fm->h_App,e_FM_EX_BMI_STORAGE_PROFILE_ECC);
    if (event & BMI_ERR_INTR_EN_LIST_RAM_ECC)
        p_Fm->f_Exception(p_Fm->h_App,e_FM_EX_BMI_LIST_RAM_ECC);
    if (event & BMI_ERR_INTR_EN_STATISTICS_RAM_ECC)
        p_Fm->f_Exception(p_Fm->h_App,e_FM_EX_BMI_STATISTICS_RAM_ECC);
    if (event & BMI_ERR_INTR_EN_DISPATCH_RAM_ECC)
        p_Fm->f_Exception(p_Fm->h_App,e_FM_EX_BMI_DISPATCH_RAM_ECC);
}
