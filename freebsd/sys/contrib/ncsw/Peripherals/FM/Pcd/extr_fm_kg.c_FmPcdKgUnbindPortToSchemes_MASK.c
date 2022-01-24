#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_5__ {int /*<<< orphan*/  hardwarePortId; } ;
typedef  TYPE_1__ t_FmPcdKgInterModuleBindPortToSchemes ;
typedef  int /*<<< orphan*/  t_FmPcd ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

t_Error FUNC4(t_Handle h_FmPcd, t_FmPcdKgInterModuleBindPortToSchemes *p_SchemeBind)
{
    t_FmPcd                 *p_FmPcd = (t_FmPcd*)h_FmPcd;
    uint32_t                spReg;
    t_Error                 err = E_OK;

    err = FUNC1(p_FmPcd, p_SchemeBind, &spReg, FALSE);
    if (err)
        FUNC3(MAJOR, err, NO_MSG);

    err = FUNC2(p_FmPcd, p_SchemeBind->hardwarePortId, spReg, FALSE);
    if (err)
        FUNC3(MAJOR, err, NO_MSG);

    FUNC0(p_FmPcd, p_SchemeBind);

    return E_OK;
}