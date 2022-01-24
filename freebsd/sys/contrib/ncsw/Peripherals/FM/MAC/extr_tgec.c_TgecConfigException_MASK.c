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
struct TYPE_3__ {int exceptions; struct TYPE_3__* p_TgecDriverParam; } ;
typedef  TYPE_1__ t_Tgec ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  e_FmMacExceptions ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static t_Error FUNC3(t_Handle h_Tgec, e_FmMacExceptions exception, bool enable)
{
    t_Tgec      *p_Tgec = (t_Tgec *)h_Tgec;
    uint32_t    bitMask = 0;

    FUNC2(p_Tgec, E_INVALID_HANDLE);
    FUNC2(p_Tgec->p_TgecDriverParam, E_INVALID_STATE);

    FUNC0(bitMask, exception);
    if (bitMask)
    {
        if (enable)
            p_Tgec->exceptions |= bitMask;
        else
            p_Tgec->exceptions &= ~bitMask;
    }
    else
        FUNC1(MAJOR, E_INVALID_VALUE, ("Undefined exception"));

    return E_OK;
}