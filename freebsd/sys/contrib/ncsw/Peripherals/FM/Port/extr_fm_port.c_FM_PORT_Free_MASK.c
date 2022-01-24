#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
struct TYPE_14__ {scalar_t__ h_Spinlock; scalar_t__ p_ParamsPage; int /*<<< orphan*/  h_FmMuram; int /*<<< orphan*/  portId; scalar_t__ portType; int /*<<< orphan*/  h_Fm; TYPE_2__* p_FmPortDriverParam; int /*<<< orphan*/  hardwarePortId; scalar_t__ imEn; scalar_t__ enabled; scalar_t__ pcdEngines; } ;
typedef  TYPE_3__ t_FmPort ;
struct TYPE_15__ {int /*<<< orphan*/  deqPipelineDepth; scalar_t__ portType; int /*<<< orphan*/  hardwarePortId; } ;
typedef  TYPE_4__ t_FmInterModulePortFreeParams ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  fmParams ;
typedef  scalar_t__ e_FmPortType ;
struct TYPE_12__ {int /*<<< orphan*/  tx_fifo_deq_pipeline_depth; } ;
struct TYPE_13__ {TYPE_1__ dfltCfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC11(t_Handle h_FmPort)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;
    t_FmInterModulePortFreeParams fmParams;

    FUNC7(p_FmPort, E_INVALID_HANDLE);

    if (p_FmPort->pcdEngines)
        FUNC6(
                MAJOR,
                E_INVALID_STATE,
                ("Trying to free a port with PCD. FM_PORT_DeletePCD must be called first."));

    if (p_FmPort->enabled)
    {
        if (FUNC1(p_FmPort) != E_OK)
            FUNC6(MAJOR, E_INVALID_STATE, ("FM_PORT_Disable FAILED"));
    }

    if (p_FmPort->imEn)
        FUNC4(p_FmPort);

    FUNC3(p_FmPort);

    FUNC10(&fmParams, 0, sizeof(fmParams));
    fmParams.hardwarePortId = p_FmPort->hardwarePortId;
    fmParams.portType = (e_FmPortType)p_FmPort->portType;
    fmParams.deqPipelineDepth =
            p_FmPort->p_FmPortDriverParam->dfltCfg.tx_fifo_deq_pipeline_depth;

    FUNC2(p_FmPort->h_Fm, &fmParams);

#if (DPAA_VERSION >= 11)
    if (FmVSPFreeForPort(p_FmPort->h_Fm, p_FmPort->portType, p_FmPort->portId)
            != E_OK)
        RETURN_ERROR(MAJOR, E_INVALID_STATE, ("VSP free of port FAILED"));

    if (p_FmPort->p_ParamsPage)
        FM_MURAM_FreeMem(p_FmPort->h_FmMuram, p_FmPort->p_ParamsPage);
#endif /* (DPAA_VERSION >= 11) */

    if (p_FmPort->h_Spinlock)
        FUNC9(p_FmPort->h_Spinlock);

    FUNC8(p_FmPort);

    return E_OK;
}