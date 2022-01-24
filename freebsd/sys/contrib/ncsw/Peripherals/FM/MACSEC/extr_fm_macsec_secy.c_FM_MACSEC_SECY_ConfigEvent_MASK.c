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
struct TYPE_3__ {int events; struct TYPE_3__* p_FmMacsecSecYDriverParam; } ;
typedef  TYPE_1__ t_FmMacsecSecY ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  e_FmMacsecSecYEvents ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

t_Error FUNC3(t_Handle h_FmMacsecSecY, e_FmMacsecSecYEvents event, bool enable)
{
    t_FmMacsecSecY  *p_FmMacsecSecY = (t_FmMacsecSecY *)h_FmMacsecSecY;
    uint32_t        bitMask         = 0;

    FUNC2(p_FmMacsecSecY, E_INVALID_HANDLE);
    FUNC2(p_FmMacsecSecY->p_FmMacsecSecYDriverParam, E_INVALID_STATE);

    FUNC0(bitMask, event);
    if (bitMask)
    {
        if (enable)
            p_FmMacsecSecY->events |= bitMask;
        else
            p_FmMacsecSecY->events &= ~bitMask;
    }
    else
        FUNC1(MAJOR, E_INVALID_VALUE, ("Undefined event"));

    return E_OK;
}