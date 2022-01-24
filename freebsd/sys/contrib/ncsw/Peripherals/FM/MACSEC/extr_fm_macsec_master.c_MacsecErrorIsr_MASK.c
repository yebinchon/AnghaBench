#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_7__ {int userExceptions; TYPE_2__* p_FmMacsecRegs; int /*<<< orphan*/  h_App; int /*<<< orphan*/  (* f_Exception ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__* intrMng; } ;
typedef  TYPE_3__ t_FmMacsec ;
struct TYPE_6__ {int /*<<< orphan*/  meec; int /*<<< orphan*/  err; int /*<<< orphan*/  erer; } ;
struct TYPE_5__ {int /*<<< orphan*/  h_SrcHandle; int /*<<< orphan*/  (* f_Isr ) (int /*<<< orphan*/ ,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ FM_MACSEC_EX_ECC ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FM_MACSEC_USER_EX_MULTI_BIT_ECC ; 
 int FM_MACSEC_USER_EX_SINGLE_BIT_ECC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ MECC_CAP ; 
 scalar_t__ MECC_CET ; 
 scalar_t__ MECC_CET_SHIFT ; 
 scalar_t__ NUM_OF_TX_SC ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  e_FM_INTR_TYPE_ERR ; 
 int /*<<< orphan*/  e_FM_MACSEC_EX_MULTI_BIT_ECC ; 
 int /*<<< orphan*/  e_FM_MACSEC_EX_SINGLE_BIT_ECC ; 
 int /*<<< orphan*/  e_FM_MACSEC_MOD_SC_TX ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(t_Handle h_FmMacsec)
{
    t_FmMacsec  *p_FmMacsec = (t_FmMacsec*)h_FmMacsec;
    uint32_t    errors,error,i;

    FUNC4(p_FmMacsec, E_INVALID_HANDLE);

    errors = FUNC3(p_FmMacsec->p_FmMacsecRegs->err);
    errors |= FUNC3(p_FmMacsec->p_FmMacsecRegs->erer);
    FUNC5(p_FmMacsec->p_FmMacsecRegs->err,errors);

    for (i=0; i<NUM_OF_TX_SC; i++)
        if (errors & FUNC1(i))
        {
            FUNC2(e_FM_MACSEC_MOD_SC_TX, i, e_FM_INTR_TYPE_ERR, error);
            p_FmMacsec->intrMng[error].f_Isr(p_FmMacsec->intrMng[error].h_SrcHandle, i);
        }

    if (errors & FM_MACSEC_EX_ECC)
    {
        uint8_t     eccType;
        uint32_t    tmpReg;

        tmpReg = FUNC3(p_FmMacsec->p_FmMacsecRegs->meec);
        FUNC0(tmpReg & MECC_CAP);
        eccType = (uint8_t)((tmpReg & MECC_CET) >> MECC_CET_SHIFT);

        if (!eccType && (p_FmMacsec->userExceptions & FM_MACSEC_USER_EX_SINGLE_BIT_ECC))
            p_FmMacsec->f_Exception(p_FmMacsec->h_App,e_FM_MACSEC_EX_SINGLE_BIT_ECC);
        else if (eccType && (p_FmMacsec->userExceptions & FM_MACSEC_USER_EX_MULTI_BIT_ECC))
            p_FmMacsec->f_Exception(p_FmMacsec->h_App,e_FM_MACSEC_EX_MULTI_BIT_ECC);
        else
            FUNC5(p_FmMacsec->p_FmMacsecRegs->meec,tmpReg);
    }
}