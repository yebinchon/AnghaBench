
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_14__ {scalar_t__ h_Spinlock; scalar_t__ p_ParamsPage; int h_FmMuram; int portId; scalar_t__ portType; int h_Fm; TYPE_2__* p_FmPortDriverParam; int hardwarePortId; scalar_t__ imEn; scalar_t__ enabled; scalar_t__ pcdEngines; } ;
typedef TYPE_3__ t_FmPort ;
struct TYPE_15__ {int deqPipelineDepth; scalar_t__ portType; int hardwarePortId; } ;
typedef TYPE_4__ t_FmInterModulePortFreeParams ;
typedef scalar_t__ t_Error ;
typedef int fmParams ;
typedef scalar_t__ e_FmPortType ;
struct TYPE_12__ {int tx_fifo_deq_pipeline_depth; } ;
struct TYPE_13__ {TYPE_1__ dfltCfg; } ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 scalar_t__ E_OK ;
 int FM_MURAM_FreeMem (int ,scalar_t__) ;
 scalar_t__ FM_PORT_Disable (TYPE_3__*) ;
 int FmFreePortParams (int ,TYPE_4__*) ;
 int FmPortDriverParamFree (TYPE_3__*) ;
 int FmPortImFree (TYPE_3__*) ;
 scalar_t__ FmVSPFreeForPort (int ,scalar_t__,int ) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_3__*,int ) ;
 int XX_Free (TYPE_3__*) ;
 int XX_FreeSpinlock (scalar_t__) ;
 int memset (TYPE_4__*,int ,int) ;

t_Error FM_PORT_Free(t_Handle h_FmPort)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;
    t_FmInterModulePortFreeParams fmParams;

    SANITY_CHECK_RETURN_ERROR(p_FmPort, E_INVALID_HANDLE);

    if (p_FmPort->pcdEngines)
        RETURN_ERROR(
                MAJOR,
                E_INVALID_STATE,
                ("Trying to free a port with PCD. FM_PORT_DeletePCD must be called first."));

    if (p_FmPort->enabled)
    {
        if (FM_PORT_Disable(p_FmPort) != E_OK)
            RETURN_ERROR(MAJOR, E_INVALID_STATE, ("FM_PORT_Disable FAILED"));
    }

    if (p_FmPort->imEn)
        FmPortImFree(p_FmPort);

    FmPortDriverParamFree(p_FmPort);

    memset(&fmParams, 0, sizeof(fmParams));
    fmParams.hardwarePortId = p_FmPort->hardwarePortId;
    fmParams.portType = (e_FmPortType)p_FmPort->portType;
    fmParams.deqPipelineDepth =
            p_FmPort->p_FmPortDriverParam->dfltCfg.tx_fifo_deq_pipeline_depth;

    FmFreePortParams(p_FmPort->h_Fm, &fmParams);
    if (p_FmPort->h_Spinlock)
        XX_FreeSpinlock(p_FmPort->h_Spinlock);

    XX_Free(p_FmPort);

    return E_OK;
}
