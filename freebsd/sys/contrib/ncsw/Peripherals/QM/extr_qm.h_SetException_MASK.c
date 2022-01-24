#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int exceptions; } ;
typedef  TYPE_1__ t_Qm ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  e_QmExceptions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static __inline__ t_Error FUNC3(t_Qm *p_Qm, e_QmExceptions exception, bool enable)
{
    uint32_t            bitMask = 0;

    FUNC0(p_Qm);

    FUNC1(bitMask, exception);
    if(bitMask)
    {
        if (enable)
            p_Qm->exceptions |= bitMask;
        else
            p_Qm->exceptions &= ~bitMask;
   }
    else
        FUNC2(MAJOR, E_INVALID_VALUE, ("Undefined exception"));

    return E_OK;
}