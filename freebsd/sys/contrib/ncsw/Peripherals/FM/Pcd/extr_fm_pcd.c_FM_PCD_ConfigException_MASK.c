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
struct TYPE_3__ {scalar_t__ guestId; int exceptions; } ;
typedef  TYPE_1__ t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  e_FmPcdExceptions ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_NOT_SUPPORTED ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

t_Error FUNC3(t_Handle h_FmPcd, e_FmPcdExceptions exception, bool enable)
{
    t_FmPcd         *p_FmPcd = (t_FmPcd*)h_FmPcd;
    uint32_t        bitMask = 0;

    FUNC2(p_FmPcd, E_INVALID_HANDLE);

    if (p_FmPcd->guestId != NCSW_MASTER_ID)
        FUNC1(MAJOR, E_NOT_SUPPORTED, ("FM_PCD_ConfigException - guest mode!"));

    FUNC0(bitMask, exception);
    if (bitMask)
    {
        if (enable)
            p_FmPcd->exceptions |= bitMask;
        else
            p_FmPcd->exceptions &= ~bitMask;
   }
    else
        FUNC1(MAJOR, E_INVALID_VALUE, ("Undefined exception"));

    return E_OK;
}