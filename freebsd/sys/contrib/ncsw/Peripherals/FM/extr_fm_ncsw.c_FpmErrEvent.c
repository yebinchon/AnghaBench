
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int h_App; int (* f_Exception ) (int ,int ) ;struct fman_fpm_regs* p_FmFpmRegs; } ;
typedef TYPE_1__ t_Fm ;
struct fman_fpm_regs {int dummy; } ;


 int FPM_EV_MASK_DOUBLE_ECC ;
 int FPM_EV_MASK_DOUBLE_ECC_EN ;
 int FPM_EV_MASK_SINGLE_ECC ;
 int FPM_EV_MASK_SINGLE_ECC_EN ;
 int FPM_EV_MASK_STALL ;
 int FPM_EV_MASK_STALL_EN ;
 int e_FM_EX_FPM_DOUBLE_ECC ;
 int e_FM_EX_FPM_SINGLE_ECC ;
 int e_FM_EX_FPM_STALL_ON_TASKS ;
 int fman_get_fpm_err_event (struct fman_fpm_regs*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;

__attribute__((used)) static void FpmErrEvent(t_Fm *p_Fm)
{
    uint32_t event;
    struct fman_fpm_regs *fpm_rg = p_Fm->p_FmFpmRegs;

    event = fman_get_fpm_err_event(fpm_rg);

    if ((event & FPM_EV_MASK_DOUBLE_ECC) && (event & FPM_EV_MASK_DOUBLE_ECC_EN))
        p_Fm->f_Exception(p_Fm->h_App,e_FM_EX_FPM_DOUBLE_ECC);
    if ((event & FPM_EV_MASK_STALL) && (event & FPM_EV_MASK_STALL_EN))
        p_Fm->f_Exception(p_Fm->h_App,e_FM_EX_FPM_STALL_ON_TASKS);
    if ((event & FPM_EV_MASK_SINGLE_ECC) && (event & FPM_EV_MASK_SINGLE_ECC_EN))
        p_Fm->f_Exception(p_Fm->h_App,e_FM_EX_FPM_SINGLE_ECC);
}
