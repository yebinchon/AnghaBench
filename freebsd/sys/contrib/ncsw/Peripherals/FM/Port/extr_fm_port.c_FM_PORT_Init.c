
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_48__ TYPE_9__ ;
typedef struct TYPE_47__ TYPE_8__ ;
typedef struct TYPE_46__ TYPE_7__ ;
typedef struct TYPE_45__ TYPE_6__ ;
typedef struct TYPE_44__ TYPE_5__ ;
typedef struct TYPE_43__ TYPE_4__ ;
typedef struct TYPE_42__ TYPE_3__ ;
typedef struct TYPE_41__ TYPE_2__ ;
typedef struct TYPE_40__ TYPE_23__ ;
typedef struct TYPE_39__ TYPE_1__ ;
typedef struct TYPE_38__ TYPE_17__ ;
typedef struct TYPE_37__ TYPE_16__ ;
typedef struct TYPE_36__ TYPE_15__ ;
typedef struct TYPE_35__ TYPE_13__ ;
typedef struct TYPE_34__ TYPE_12__ ;
typedef struct TYPE_33__ TYPE_11__ ;
typedef struct TYPE_32__ TYPE_10__ ;


typedef union fman_port_bmi_regs {int dummy; } fman_port_bmi_regs ;
typedef void* uint8_t ;
typedef int uint64_t ;
typedef TYPE_12__* t_Handle ;
struct TYPE_35__ {int majorRev; int minorRev; } ;
typedef TYPE_13__ t_FmRevisionInfo ;
typedef int t_FmPortPrsRegs ;
struct TYPE_43__ {int tx_fifo_deq_pipeline_depth; } ;
struct TYPE_40__ {scalar_t__ startMargins; scalar_t__ endMargins; } ;
struct TYPE_34__ {TYPE_4__ dfltCfg; int liodnBase; int liodnOffset; scalar_t__ enBufPoolDepletion; TYPE_23__ bufMargins; scalar_t__ baseAddr; int errorsToDiscard; scalar_t__ bcbWorkaround; int bufferPrefixContent; int intContext; } ;
typedef TYPE_12__ t_FmPortDriverParam ;
struct TYPE_32__ {scalar_t__ autoResMaxSizes; } ;
struct TYPE_44__ {int majorRev; } ;
struct TYPE_33__ {int num; int extra; } ;
struct TYPE_42__ {scalar_t__ extra; scalar_t__ num; } ;
struct TYPE_41__ {scalar_t__ extra; scalar_t__ num; } ;
struct TYPE_39__ {scalar_t__ largestBufSize; } ;
struct TYPE_45__ {scalar_t__ high; scalar_t__ low; } ;
struct TYPE_38__ {int type; int fm_rev_maj; int sizeOfFifo; int deqPipelineDepth; TYPE_6__ fmMuramPhysBaseAddr; int maxFrameLength; int liodnBase; int liodnOffset; scalar_t__ independentMode; int extraSizeOfFifo; void* numOfExtraOpenDmas; void* numOfOpenDmas; void* numOfExtraTasks; void* numOfTasks; scalar_t__ portType; int hardwarePortId; scalar_t__ im_en; void* ext_pools_num; struct fman_port_qmi_regs* qmi_regs; union fman_port_bmi_regs* bmi_regs; int fm_rev_min; } ;
struct TYPE_36__ {scalar_t__ portType; int fmMuramPhysBaseAddr; TYPE_10__ deepSleepVars; TYPE_9__* p_FmPortBmiRegs; int h_Fm; int h_FmMuram; TYPE_5__ fmRevInfo; int maxFrameLength; TYPE_12__* p_FmPortDriverParam; scalar_t__ imEn; TYPE_11__ fifoBufs; TYPE_3__ openDmas; TYPE_2__ tasks; int hardwarePortId; TYPE_1__ rxPoolsParams; int * p_FmPortPrsRegs; TYPE_17__ port; int internalBufferOffset; int bufferOffsets; } ;
typedef TYPE_15__ t_FmPort ;
struct TYPE_37__ {int errorsDiscardMask; int discardMask; int misc; } ;
typedef TYPE_16__ t_FmPcdCtrlParamsPage ;
typedef TYPE_17__ t_FmInterModulePortInitParams ;
typedef scalar_t__ t_Error ;
struct fman_port_qmi_regs {int dummy; } ;
struct fman_port {int dummy; } ;
typedef int fmParams ;
typedef enum fman_port_type { ____Placeholder_fman_port_type } fman_port_type ;
typedef scalar_t__ e_FmPortType ;
struct TYPE_47__ {int fmbm_rfsem; int fmbm_rfsdm; } ;
struct TYPE_46__ {int fmbm_ofsem; int fmbm_ofsdm; } ;
struct TYPE_48__ {TYPE_8__ rxPortBmiRegs; TYPE_7__ ohPortBmiRegs; } ;


 int ASSERT_COND (TYPE_16__*) ;
 int BMI_FIFO_UNITS ;
 scalar_t__ BMI_PORT_REGS_OFFSET ;
 int CHECK_INIT_PARAMETERS (TYPE_15__*,int ) ;
 int CheckInitParameters ;
 int DEFAULT_PORT_numOfFifoBufs (scalar_t__) ;
 int E_INVALID_HANDLE ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_OK ;
 int FM_CTL_PARAMS_PAGE_ALWAYS_ON ;
 int FM_CTL_PARAMS_PAGE_OP_FIX_EN ;
 int FM_GetRevision (int ,TYPE_13__*) ;
 int FM_PORT_FRM_ERR_PHYSICAL ;
 int FmGetMuramHandle (int ) ;
 scalar_t__ FmGetSetPortParams (int ,TYPE_17__*) ;
 int FmPortConfigAutoResForDeepSleepSupport1 (TYPE_15__*) ;
 int FmPortDriverParamFree (TYPE_15__*) ;
 int FmPortSetGprFunc (TYPE_15__*,int ,void**) ;
 scalar_t__ FmSpBuildBufferStructure (int *,int *,TYPE_23__*,int *,int *) ;
 int GET_UINT32 (int ) ;
 scalar_t__ InitLowLevelDriver (TYPE_15__*) ;
 int KILOBYTE ;
 int MAJOR ;
 scalar_t__ MIN_EXT_BUF_SIZE ;
 char* NO_MSG ;
 scalar_t__ PRS_PORT_REGS_OFFSET ;
 scalar_t__ QMI_PORT_REGS_OFFSET ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_12__*,int ) ;
 scalar_t__ SetExtBufferPools (TYPE_15__*) ;
 scalar_t__ UINT_TO_PTR (scalar_t__) ;
 scalar_t__ VerifySizeOfFifo (TYPE_15__*) ;
 int WRITE_UINT32 (int ,int) ;
 int e_FM_PORT_GPR_MURAM_PAGE ;
 scalar_t__ e_FM_PORT_TYPE_OH_HOST_COMMAND ;
 scalar_t__ e_FM_PORT_TYPE_OH_OFFLINE_PARSING ;
 scalar_t__ e_FM_PORT_TYPE_RX ;
 scalar_t__ e_FM_PORT_TYPE_RX_10G ;
 int memset (TYPE_17__*,int ,int) ;

t_Error FM_PORT_Init(t_Handle h_FmPort)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;
    t_FmPortDriverParam *p_DriverParams;
    t_Error errCode;
    t_FmInterModulePortInitParams fmParams;
    t_FmRevisionInfo revInfo;

    SANITY_CHECK_RETURN_ERROR(h_FmPort, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPort->p_FmPortDriverParam, E_INVALID_HANDLE);

    errCode = FmSpBuildBufferStructure(
            &p_FmPort->p_FmPortDriverParam->intContext,
            &p_FmPort->p_FmPortDriverParam->bufferPrefixContent,
            &p_FmPort->p_FmPortDriverParam->bufMargins,
            &p_FmPort->bufferOffsets, &p_FmPort->internalBufferOffset);
    if (errCode != E_OK)
        RETURN_ERROR(MAJOR, errCode, NO_MSG);
    CHECK_INIT_PARAMETERS(p_FmPort, CheckInitParameters);

    p_DriverParams = p_FmPort->p_FmPortDriverParam;


    memset(&p_FmPort->port, 0, sizeof(struct fman_port));
    p_FmPort->port.type = (enum fman_port_type)p_FmPort->portType;
    FM_GetRevision(p_FmPort->h_Fm, &revInfo);
    p_FmPort->port.fm_rev_maj = revInfo.majorRev;
    p_FmPort->port.fm_rev_min = revInfo.minorRev;
    p_FmPort->port.bmi_regs =
            (union fman_port_bmi_regs *)UINT_TO_PTR(p_DriverParams->baseAddr + BMI_PORT_REGS_OFFSET);
    p_FmPort->port.qmi_regs =
            (struct fman_port_qmi_regs *)UINT_TO_PTR(p_DriverParams->baseAddr + QMI_PORT_REGS_OFFSET);
    p_FmPort->port.ext_pools_num = (uint8_t)((revInfo.majorRev == 4) ? 4 : 8);
    p_FmPort->port.im_en = p_FmPort->imEn;
    p_FmPort->p_FmPortPrsRegs =
            (t_FmPortPrsRegs *)UINT_TO_PTR(p_DriverParams->baseAddr + PRS_PORT_REGS_OFFSET);

    if (((p_FmPort->portType == e_FM_PORT_TYPE_RX_10G)
            || (p_FmPort->portType == e_FM_PORT_TYPE_RX)) && !p_FmPort->imEn)
    {



        errCode = SetExtBufferPools(p_FmPort);
        if (errCode)
            RETURN_ERROR(MAJOR, errCode, NO_MSG);

        if (p_DriverParams->bufMargins.startMargins + MIN_EXT_BUF_SIZE
                + p_DriverParams->bufMargins.endMargins
                > p_FmPort->rxPoolsParams.largestBufSize)
            RETURN_ERROR(
                    MAJOR,
                    E_INVALID_VALUE,
                    ("bufMargins.startMargins (%d) + minimum buf size (64) + bufMargins.endMargins (%d) is larger than maximum external buffer size (%d)", p_DriverParams->bufMargins.startMargins, p_DriverParams->bufMargins.endMargins, p_FmPort->rxPoolsParams.largestBufSize));
    }
    if (p_FmPort->portType == e_FM_PORT_TYPE_OH_OFFLINE_PARSING)
    {
        {






            {

                errCode = SetExtBufferPools(p_FmPort);
                if (errCode)
                    RETURN_ERROR(MAJOR, errCode, NO_MSG);
            }
        }
    }




    memset(&fmParams, 0, sizeof(fmParams));
    fmParams.hardwarePortId = p_FmPort->hardwarePortId;
    fmParams.portType = (e_FmPortType)p_FmPort->portType;
    fmParams.numOfTasks = (uint8_t)p_FmPort->tasks.num;
    fmParams.numOfExtraTasks = (uint8_t)p_FmPort->tasks.extra;
    fmParams.numOfOpenDmas = (uint8_t)p_FmPort->openDmas.num;
    fmParams.numOfExtraOpenDmas = (uint8_t)p_FmPort->openDmas.extra;

    if (p_FmPort->fifoBufs.num)
    {
        errCode = VerifySizeOfFifo(p_FmPort);
        if (errCode != E_OK)
            RETURN_ERROR(MAJOR, errCode, NO_MSG);
    }
    fmParams.sizeOfFifo = p_FmPort->fifoBufs.num;
    fmParams.extraSizeOfFifo = p_FmPort->fifoBufs.extra;
    fmParams.independentMode = p_FmPort->imEn;
    fmParams.liodnOffset = p_DriverParams->liodnOffset;
    fmParams.liodnBase = p_DriverParams->liodnBase;
    fmParams.deqPipelineDepth =
            p_FmPort->p_FmPortDriverParam->dfltCfg.tx_fifo_deq_pipeline_depth;
    fmParams.maxFrameLength = p_FmPort->maxFrameLength;

    if ((p_FmPort->portType == e_FM_PORT_TYPE_OH_OFFLINE_PARSING) ||
            (p_FmPort->portType == e_FM_PORT_TYPE_OH_HOST_COMMAND))
    {
        if (!((p_FmPort->fmRevInfo.majorRev == 4) ||
                        (p_FmPort->fmRevInfo.majorRev >= 6)))



        fmParams.deqPipelineDepth = 2;
    }


    errCode = FmGetSetPortParams(p_FmPort->h_Fm, &fmParams);
    if (errCode)
        RETURN_ERROR(MAJOR, errCode, NO_MSG);


    p_FmPort->fmMuramPhysBaseAddr =
            (uint64_t)((uint64_t)(fmParams.fmMuramPhysBaseAddr.low)
                    | ((uint64_t)(fmParams.fmMuramPhysBaseAddr.high) << 32));
    p_FmPort->h_FmMuram = FmGetMuramHandle(p_FmPort->h_Fm);

    errCode = InitLowLevelDriver(p_FmPort);
    if (errCode != E_OK)
        RETURN_ERROR(MAJOR, errCode, NO_MSG);

    FmPortDriverParamFree(p_FmPort);
    if (p_FmPort->deepSleepVars.autoResMaxSizes)
        FmPortConfigAutoResForDeepSleepSupport1(p_FmPort);
    return E_OK;
}
