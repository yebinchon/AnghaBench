
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_7__ {int userExceptions; TYPE_2__* p_FmMacsecRegs; int h_App; int (* f_Exception ) (int ,int ) ;TYPE_1__* intrMng; } ;
typedef TYPE_3__ t_FmMacsec ;
struct TYPE_6__ {int meec; int err; int erer; } ;
struct TYPE_5__ {int h_SrcHandle; int (* f_Isr ) (int ,scalar_t__) ;} ;


 int ASSERT_COND (scalar_t__) ;
 int E_INVALID_HANDLE ;
 scalar_t__ FM_MACSEC_EX_ECC ;
 scalar_t__ FM_MACSEC_EX_TX_SC (scalar_t__) ;
 int FM_MACSEC_USER_EX_MULTI_BIT_ECC ;
 int FM_MACSEC_USER_EX_SINGLE_BIT_ECC ;
 int GET_MACSEC_MODULE_EVENT (int ,scalar_t__,int ,scalar_t__) ;
 scalar_t__ GET_UINT32 (int ) ;
 scalar_t__ MECC_CAP ;
 scalar_t__ MECC_CET ;
 scalar_t__ MECC_CET_SHIFT ;
 scalar_t__ NUM_OF_TX_SC ;
 int SANITY_CHECK_RETURN (TYPE_3__*,int ) ;
 int WRITE_UINT32 (int ,scalar_t__) ;
 int e_FM_INTR_TYPE_ERR ;
 int e_FM_MACSEC_EX_MULTI_BIT_ECC ;
 int e_FM_MACSEC_EX_SINGLE_BIT_ECC ;
 int e_FM_MACSEC_MOD_SC_TX ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;

__attribute__((used)) static void MacsecErrorIsr(t_Handle h_FmMacsec)
{
    t_FmMacsec *p_FmMacsec = (t_FmMacsec*)h_FmMacsec;
    uint32_t errors,error,i;

    SANITY_CHECK_RETURN(p_FmMacsec, E_INVALID_HANDLE);

    errors = GET_UINT32(p_FmMacsec->p_FmMacsecRegs->err);
    errors |= GET_UINT32(p_FmMacsec->p_FmMacsecRegs->erer);
    WRITE_UINT32(p_FmMacsec->p_FmMacsecRegs->err,errors);

    for (i=0; i<NUM_OF_TX_SC; i++)
        if (errors & FM_MACSEC_EX_TX_SC(i))
        {
            GET_MACSEC_MODULE_EVENT(e_FM_MACSEC_MOD_SC_TX, i, e_FM_INTR_TYPE_ERR, error);
            p_FmMacsec->intrMng[error].f_Isr(p_FmMacsec->intrMng[error].h_SrcHandle, i);
        }

    if (errors & FM_MACSEC_EX_ECC)
    {
        uint8_t eccType;
        uint32_t tmpReg;

        tmpReg = GET_UINT32(p_FmMacsec->p_FmMacsecRegs->meec);
        ASSERT_COND(tmpReg & MECC_CAP);
        eccType = (uint8_t)((tmpReg & MECC_CET) >> MECC_CET_SHIFT);

        if (!eccType && (p_FmMacsec->userExceptions & FM_MACSEC_USER_EX_SINGLE_BIT_ECC))
            p_FmMacsec->f_Exception(p_FmMacsec->h_App,e_FM_MACSEC_EX_SINGLE_BIT_ECC);
        else if (eccType && (p_FmMacsec->userExceptions & FM_MACSEC_USER_EX_MULTI_BIT_ECC))
            p_FmMacsec->f_Exception(p_FmMacsec->h_App,e_FM_MACSEC_EX_MULTI_BIT_ECC);
        else
            WRITE_UINT32(p_FmMacsec->p_FmMacsecRegs->meec,tmpReg);
    }
}
