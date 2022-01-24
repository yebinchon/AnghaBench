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
struct TYPE_3__ {int userExceptions; struct TYPE_3__* p_FmMacsecDriverParam; } ;
typedef  TYPE_1__ t_FmMacsec ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  e_FmMacsecExceptions ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static t_Error FUNC3(t_Handle h_FmMacsec, e_FmMacsecExceptions exception, bool enable)
{
    t_FmMacsec  *p_FmMacsec = (t_FmMacsec*)h_FmMacsec;
    uint32_t    bitMask = 0;

    FUNC2(p_FmMacsec, E_INVALID_HANDLE);
    FUNC2(p_FmMacsec->p_FmMacsecDriverParam, E_INVALID_HANDLE);

    FUNC0(bitMask, exception);
    if (bitMask)
    {
        if (enable)
            p_FmMacsec->userExceptions |= bitMask;
        else
            p_FmMacsec->userExceptions &= ~bitMask;
    }
    else
        FUNC1(MAJOR, E_INVALID_VALUE, ("Undefined exception"));

    return E_OK;
}