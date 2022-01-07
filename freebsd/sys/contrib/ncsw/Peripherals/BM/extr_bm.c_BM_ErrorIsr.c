
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_5__ {scalar_t__ guestId; int h_App; int (* f_Exception ) (int ,int ) ;TYPE_1__* p_BmRegs; } ;
typedef TYPE_2__ t_Bm ;
struct TYPE_4__ {int err_isr; int err_ier; } ;


 int BM_EX_FBPR_THRESHOLD ;
 int BM_EX_INVALID_COMMAND ;
 int BM_EX_MULTI_ECC ;
 int BM_EX_SINGLE_ECC ;
 int E_INVALID_HANDLE ;
 int E_INVALID_OPERATION ;
 int GET_UINT32 (int ) ;
 scalar_t__ NCSW_MASTER_ID ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN (TYPE_2__*,int ) ;
 int WARNING ;
 int WRITE_UINT32 (int ,int) ;
 int e_BM_EX_FBPR_THRESHOLD ;
 int e_BM_EX_INVALID_COMMAND ;
 int e_BM_EX_MULTI_ECC ;
 int e_BM_EX_SINGLE_ECC ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;

void BM_ErrorIsr(t_Handle h_Bm)
{
    t_Bm *p_Bm = (t_Bm *)h_Bm;
    uint32_t tmpReg;

    SANITY_CHECK_RETURN(p_Bm, E_INVALID_HANDLE);

    if (p_Bm->guestId != NCSW_MASTER_ID)
    {
        REPORT_ERROR(WARNING, E_INVALID_OPERATION, ("Master Only"));
        return;
    }

    tmpReg = GET_UINT32(p_Bm->p_BmRegs->err_isr);
    tmpReg &= GET_UINT32(p_Bm->p_BmRegs->err_ier);
    WRITE_UINT32(p_Bm->p_BmRegs->err_isr, tmpReg);

    if (tmpReg & BM_EX_INVALID_COMMAND)
        p_Bm->f_Exception(p_Bm->h_App, e_BM_EX_INVALID_COMMAND);
    if (tmpReg & BM_EX_FBPR_THRESHOLD)
        p_Bm->f_Exception(p_Bm->h_App, e_BM_EX_FBPR_THRESHOLD);
    if (tmpReg & BM_EX_MULTI_ECC)
        p_Bm->f_Exception(p_Bm->h_App, e_BM_EX_MULTI_ECC);
    if (tmpReg & BM_EX_SINGLE_ECC)
        p_Bm->f_Exception(p_Bm->h_App, e_BM_EX_SINGLE_ECC);
}
