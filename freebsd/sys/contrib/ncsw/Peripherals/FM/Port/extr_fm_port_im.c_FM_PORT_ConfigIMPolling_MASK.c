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
struct TYPE_3__ {scalar_t__ portType; int /*<<< orphan*/  polling; int /*<<< orphan*/  h_Fm; struct TYPE_3__* p_FmPortDriverParam; struct TYPE_3__* imEn; } ;
typedef  TYPE_1__ t_FmPort ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_OPERATION ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ e_FM_PORT_TYPE_RX ; 
 scalar_t__ e_FM_PORT_TYPE_RX_10G ; 

t_Error FUNC3(t_Handle h_FmPort)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    FUNC2(p_FmPort, E_INVALID_HANDLE);
    FUNC2(p_FmPort->imEn, E_INVALID_STATE);
    FUNC2(p_FmPort->p_FmPortDriverParam, E_INVALID_HANDLE);

    if ((p_FmPort->portType != e_FM_PORT_TYPE_RX_10G) && (p_FmPort->portType != e_FM_PORT_TYPE_RX))
        FUNC1(MAJOR, E_INVALID_OPERATION, ("Available for Rx ports only"));

    if (!FUNC0(p_FmPort->h_Fm))
        FUNC1(MAJOR, E_INVALID_OPERATION, ("Available on master-partition only;"
                                                  "in guest-partitions, IM is always in polling!"));

    p_FmPort->polling = TRUE;

    return E_OK;
}