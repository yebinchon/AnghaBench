#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_5__ {scalar_t__ guestId; int /*<<< orphan*/  h_App; int /*<<< orphan*/  (* f_Exception ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__* p_BmRegs; } ;
typedef  TYPE_2__ t_Bm ;
struct TYPE_4__ {int /*<<< orphan*/  err_isr; int /*<<< orphan*/  err_ier; } ;

/* Variables and functions */
 int BM_EX_FBPR_THRESHOLD ; 
 int BM_EX_INVALID_COMMAND ; 
 int BM_EX_MULTI_ECC ; 
 int BM_EX_SINGLE_ECC ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_OPERATION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NCSW_MASTER_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  e_BM_EX_FBPR_THRESHOLD ; 
 int /*<<< orphan*/  e_BM_EX_INVALID_COMMAND ; 
 int /*<<< orphan*/  e_BM_EX_MULTI_ECC ; 
 int /*<<< orphan*/  e_BM_EX_SINGLE_ECC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(t_Handle h_Bm)
{
    t_Bm        *p_Bm = (t_Bm *)h_Bm;
    uint32_t    tmpReg;

    FUNC2(p_Bm, E_INVALID_HANDLE);

    if (p_Bm->guestId != NCSW_MASTER_ID)
    {
        FUNC1(WARNING, E_INVALID_OPERATION, ("Master Only"));
        return;
    }

    tmpReg = FUNC0(p_Bm->p_BmRegs->err_isr);
    tmpReg &= FUNC0(p_Bm->p_BmRegs->err_ier);
    FUNC3(p_Bm->p_BmRegs->err_isr, tmpReg);

    if (tmpReg & BM_EX_INVALID_COMMAND)
        p_Bm->f_Exception(p_Bm->h_App, e_BM_EX_INVALID_COMMAND);
    if (tmpReg & BM_EX_FBPR_THRESHOLD)
        p_Bm->f_Exception(p_Bm->h_App, e_BM_EX_FBPR_THRESHOLD);
    if (tmpReg & BM_EX_MULTI_ECC)
        p_Bm->f_Exception(p_Bm->h_App, e_BM_EX_MULTI_ECC);
    if (tmpReg & BM_EX_SINGLE_ECC)
        p_Bm->f_Exception(p_Bm->h_App, e_BM_EX_SINGLE_ECC);
}