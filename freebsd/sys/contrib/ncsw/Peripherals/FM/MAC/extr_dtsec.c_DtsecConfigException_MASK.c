#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_3__ {int exceptions; int /*<<< orphan*/  enTsuErrExeption; int /*<<< orphan*/  ptpTsuEnabled; struct TYPE_3__* p_DtsecDriverParam; } ;
typedef  TYPE_1__ t_Dtsec ;
typedef  int /*<<< orphan*/  e_FmMacExceptions ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  e_FM_MAC_EX_1G_1588_TS_RX_ERR ; 

__attribute__((used)) static t_Error FUNC3(t_Handle h_Dtsec, e_FmMacExceptions exception, bool enable)
{
    t_Dtsec *p_Dtsec = (t_Dtsec *)h_Dtsec;
    uint32_t    bitMask = 0;

    FUNC2(p_Dtsec, E_INVALID_HANDLE);
    FUNC2(p_Dtsec->p_DtsecDriverParam, E_INVALID_STATE);

    if (exception != e_FM_MAC_EX_1G_1588_TS_RX_ERR)
    {
        FUNC0(bitMask, exception);
        if (bitMask)
        {
            if (enable)
                p_Dtsec->exceptions |= bitMask;
            else
                p_Dtsec->exceptions &= ~bitMask;
        }
        else
            FUNC1(MAJOR, E_INVALID_VALUE, ("Undefined exception"));
    }
    else
    {
        if (!p_Dtsec->ptpTsuEnabled)
            FUNC1(MAJOR, E_INVALID_VALUE, ("Exception valid for 1588 only"));

        if (enable)
            p_Dtsec->enTsuErrExeption = TRUE;
        else
            p_Dtsec->enTsuErrExeption = FALSE;
    }

    return E_OK;
}