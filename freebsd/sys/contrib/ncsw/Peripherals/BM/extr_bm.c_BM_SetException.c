
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_6__ {scalar_t__ guestId; TYPE_1__* p_BmRegs; } ;
typedef TYPE_2__ t_Bm ;
typedef int e_BmExceptions ;
struct TYPE_5__ {int err_ier; } ;


 int BM_ConfigException (TYPE_2__*,int ,int) ;
 int E_INVALID_HANDLE ;
 int E_INVALID_OPERATION ;
 int E_OK ;
 int GET_UINT32 (int ) ;
 scalar_t__ NCSW_MASTER_ID ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_2__*,int ) ;
 int WARNING ;
 int WRITE_UINT32 (int ,int ) ;

t_Error BM_SetException(t_Handle h_Bm, e_BmExceptions exception, bool enable)
{
    t_Bm *p_Bm = (t_Bm*)h_Bm;
    uint32_t tmpReg, bitMask = 0;

    SANITY_CHECK_RETURN_ERROR(p_Bm, E_INVALID_HANDLE);

    if (p_Bm->guestId != NCSW_MASTER_ID)
        RETURN_ERROR(WARNING, E_INVALID_OPERATION, ("Master Only"));

    BM_ConfigException(p_Bm, exception, enable);

    tmpReg = GET_UINT32(p_Bm->p_BmRegs->err_ier);

    if(enable)
        tmpReg |= bitMask;
    else
        tmpReg &= ~bitMask;
    WRITE_UINT32(p_Bm->p_BmRegs->err_ier, tmpReg);

    return E_OK;
}
