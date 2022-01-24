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
typedef  scalar_t__ t_Handle ;
struct TYPE_3__ {scalar_t__ portType; int /*<<< orphan*/  extBufPools; struct TYPE_3__* p_FmPortDriverParam; } ;
typedef  TYPE_1__ t_FmPort ;
typedef  int /*<<< orphan*/  t_FmExtPools ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_OPERATION ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ e_FM_PORT_TYPE_OH_OFFLINE_PARSING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

t_Error FUNC3(t_Handle h_FmPort, t_FmExtPools *p_FmExtPools)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    FUNC1(p_FmPort, E_INVALID_HANDLE);
    FUNC1(p_FmPort->p_FmPortDriverParam, E_INVALID_HANDLE);

    if (p_FmPort->portType != e_FM_PORT_TYPE_OH_OFFLINE_PARSING)
        FUNC0(MAJOR, E_INVALID_OPERATION,
                     ("available for OP ports only"));

    FUNC2(&p_FmPort->p_FmPortDriverParam->extBufPools, p_FmExtPools,
           sizeof(t_FmExtPools));

    return E_OK;
}