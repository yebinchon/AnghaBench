
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_23__ {scalar_t__ size; scalar_t__ extBufOffset; scalar_t__ intContextOffset; } ;
struct fman_port_cfg {int tx_fifo_deq_pipeline_depth; int rx_pri_elevation; int rx_fifo_thr; scalar_t__ rx_cut_end_bytes; scalar_t__ checksum_bytes_ignore; int tx_fifo_min_level; int tx_fifo_low_comf_level; scalar_t__ discard_override; } ;
struct TYPE_14__ {int numOfPools; scalar_t__ poolsGrpModeEnable; } ;
struct TYPE_15__ {scalar_t__ startMargins; } ;
struct TYPE_16__ {int manipExtraSpace; } ;
struct TYPE_24__ {int numOfPoolsUsed; } ;
struct TYPE_21__ {int liodnOffset; scalar_t__ deqSubPortal; int dfltFqid; int errFqid; int errorsToDiscard; scalar_t__ cheksumLastBytesIgnore; scalar_t__ deqPrefetchOption; scalar_t__ setSizeOfFifo; scalar_t__ setNumOfOpenDmas; scalar_t__ setNumOfTasks; TYPE_8__ intContext; struct fman_port_cfg dfltCfg; TYPE_10__ bufPoolDepletion; TYPE_11__ bufMargins; TYPE_1__ bufferPrefixContent; scalar_t__ p_BackupBmPools; TYPE_9__ extBufPools; } ;
typedef TYPE_6__ t_FmPortDriverParam ;
struct TYPE_20__ {int majorRev; } ;
struct TYPE_19__ {int extra; int num; } ;
struct TYPE_18__ {scalar_t__ num; scalar_t__ extra; } ;
struct TYPE_17__ {scalar_t__ num; scalar_t__ extra; } ;
struct TYPE_22__ {scalar_t__ portType; TYPE_6__* p_FmPortDriverParam; TYPE_5__ fmRevInfo; TYPE_4__ fifoBufs; TYPE_3__ openDmas; TYPE_2__ tasks; scalar_t__ imEn; } ;
typedef TYPE_7__ t_FmPort ;
typedef scalar_t__ t_Error ;


 int BMI_FIFO_UNITS ;
 int BMI_STATUS_OP_MASK_UNUSED ;
 int BMI_STATUS_RX_MASK_UNUSED ;
 scalar_t__ DEFAULT_notSupported ;
 scalar_t__ DPAA_LIODN_DONT_OVERRIDE ;
 scalar_t__ ERROR_CODE (scalar_t__) ;
 int E_CONFLICT ;
 int E_INVALID_OPERATION ;
 int E_INVALID_SELECTION ;
 int E_INVALID_VALUE ;
 int E_NOT_SUPPORTED ;
 scalar_t__ E_OK ;
 int FM_LIODN_OFFSET_MASK ;
 scalar_t__ FM_MAX_NUM_OF_SUB_PORTALS ;
 scalar_t__ FRAME_END_DATA_SIZE ;
 scalar_t__ FmPortImCheckInitParameters (TYPE_7__*) ;
 scalar_t__ FmSpCheckBufMargins (TYPE_11__*) ;
 scalar_t__ FmSpCheckBufPoolsParams (TYPE_9__*,scalar_t__,TYPE_10__*) ;
 scalar_t__ FmSpCheckIntContextParams (TYPE_8__*) ;
 int MAJOR ;
 scalar_t__ MAX_FIFO_PIPELINE_DEPTH ;
 scalar_t__ MAX_NUM_OF_DMAS ;
 scalar_t__ MAX_NUM_OF_EXTRA_DMAS ;
 scalar_t__ MAX_NUM_OF_EXTRA_TASKS ;
 scalar_t__ MAX_NUM_OF_TASKS ;
 int MAX_PORT_FIFO_SIZE ;
 scalar_t__ MIN_NUM_OF_OP_DMAS ;
 scalar_t__ MIN_TX_INT_OFFSET ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,int ,char*) ;
 scalar_t__ e_FM_PORT_TYPE_OH_HOST_COMMAND ;
 scalar_t__ e_FM_PORT_TYPE_OH_OFFLINE_PARSING ;
 scalar_t__ e_FM_PORT_TYPE_RX ;
 scalar_t__ e_FM_PORT_TYPE_RX_10G ;
 scalar_t__ e_FM_PORT_TYPE_TX ;
 scalar_t__ e_FM_PORT_TYPE_TX_10G ;

__attribute__((used)) static t_Error CheckInitParameters(t_FmPort *p_FmPort)
{
    t_FmPortDriverParam *p_Params = p_FmPort->p_FmPortDriverParam;
    struct fman_port_cfg *p_DfltConfig = &p_Params->dfltCfg;
    t_Error ans = E_OK;
    uint32_t unusedMask;

    if (p_FmPort->imEn)
    {
        if (p_FmPort->portType == e_FM_PORT_TYPE_RX_10G)
            if (p_FmPort->p_FmPortDriverParam->dfltCfg.tx_fifo_deq_pipeline_depth
                    > 2)
                RETURN_ERROR(
                        MAJOR,
                        E_INVALID_VALUE,
                        ("fifoDeqPipelineDepth for IM 10G can't be larger than 2"));

        if ((ans = FmPortImCheckInitParameters(p_FmPort)) != E_OK)
            return ERROR_CODE(ans);
    }
    else
    {



        if ((p_FmPort->portType == e_FM_PORT_TYPE_RX)
                || (p_FmPort->portType == e_FM_PORT_TYPE_RX_10G))
        {

            if (!p_Params->extBufPools.numOfPoolsUsed)
                RETURN_ERROR(
                        MAJOR,
                        E_INVALID_VALUE,
                        ("extBufPools.numOfPoolsUsed=0. At least one buffer pool must be defined"));

            if (FmSpCheckBufPoolsParams(&p_Params->extBufPools,
                                        p_Params->p_BackupBmPools,
                                        &p_Params->bufPoolDepletion) != E_OK)
                RETURN_ERROR(MAJOR, E_INVALID_VALUE, NO_MSG);


            if (p_Params->intContext.size
                    && (p_Params->intContext.size
                            + p_Params->intContext.extBufOffset
                            > p_Params->bufMargins.startMargins))
                RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                             ("intContext.size is larger than start margins"));

            if ((p_Params->liodnOffset != (uint16_t)DPAA_LIODN_DONT_OVERRIDE)
                    && (p_Params->liodnOffset & ~FM_LIODN_OFFSET_MASK))
                RETURN_ERROR(
                        MAJOR,
                        E_INVALID_VALUE,
                        ("liodnOffset is larger than %d", FM_LIODN_OFFSET_MASK+1));






        }




        else
        {
            if (p_Params->deqSubPortal >= FM_MAX_NUM_OF_SUB_PORTALS)
                RETURN_ERROR(
                        MAJOR,
                        E_INVALID_VALUE,
                        (" deqSubPortal has to be in the range of 0 - %d", FM_MAX_NUM_OF_SUB_PORTALS));


            if ((p_Params->intContext.size)
                    && (p_Params->intContext.intContextOffset
                            < MIN_TX_INT_OFFSET))
                RETURN_ERROR(
                        MAJOR,
                        E_INVALID_VALUE,
                        ("non-Rx intContext.intContextOffset can't be smaller than %d", MIN_TX_INT_OFFSET));

            if ((p_FmPort->portType == e_FM_PORT_TYPE_TX)
                    || (p_FmPort->portType == e_FM_PORT_TYPE_TX_10G)

                    || (p_FmPort->p_FmPortDriverParam->dfltCfg.tx_fifo_deq_pipeline_depth
                            != DEFAULT_notSupported))
            {

                if ((!p_FmPort->p_FmPortDriverParam->dfltCfg.tx_fifo_deq_pipeline_depth)
                        || (p_FmPort->p_FmPortDriverParam->dfltCfg.tx_fifo_deq_pipeline_depth
                                > MAX_FIFO_PIPELINE_DEPTH))
                    RETURN_ERROR(
                            MAJOR,
                            E_INVALID_VALUE,
                            ("fifoDeqPipelineDepth can't be larger than %d", MAX_FIFO_PIPELINE_DEPTH));
            }
        }




        if ((p_FmPort->portType == e_FM_PORT_TYPE_RX)
                || (p_FmPort->portType == e_FM_PORT_TYPE_RX_10G)
                || (p_FmPort->portType == e_FM_PORT_TYPE_OH_OFFLINE_PARSING))
        {
            if (!p_Params->dfltFqid)
                RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                             ("dfltFqid must be between 1 and 2^24-1"));




        }






        if ((p_Params->errFqid & ~0x00FFFFFF) || !p_Params->errFqid)
            RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                         ("errFqid must be between 1 and 2^24-1"));
        if (p_Params->dfltFqid & ~0x00FFFFFF)
            RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                         ("dfltFqid must be between 1 and 2^24-1"));
    }




    if ((p_FmPort->portType == e_FM_PORT_TYPE_RX)
            || (p_FmPort->portType == e_FM_PORT_TYPE_RX_10G))
    {
        if (p_DfltConfig->rx_pri_elevation % BMI_FIFO_UNITS)
            RETURN_ERROR(
                    MAJOR,
                    E_INVALID_VALUE,
                    ("rxFifoPriElevationLevel has to be divisible by %d", BMI_FIFO_UNITS));
        if ((p_DfltConfig->rx_pri_elevation < BMI_FIFO_UNITS)
                || (p_DfltConfig->rx_pri_elevation > MAX_PORT_FIFO_SIZE))
            RETURN_ERROR(
                    MAJOR,
                    E_INVALID_VALUE,
                    ("rxFifoPriElevationLevel has to be in the range of 256 - %d", MAX_PORT_FIFO_SIZE));
        if (p_DfltConfig->rx_fifo_thr % BMI_FIFO_UNITS)
            RETURN_ERROR(
                    MAJOR,
                    E_INVALID_VALUE,
                    ("rxFifoThreshold has to be divisible by %d", BMI_FIFO_UNITS));
        if ((p_DfltConfig->rx_fifo_thr < BMI_FIFO_UNITS)
                || (p_DfltConfig->rx_fifo_thr > MAX_PORT_FIFO_SIZE))
            RETURN_ERROR(
                    MAJOR,
                    E_INVALID_VALUE,
                    ("rxFifoThreshold has to be in the range of 256 - %d", MAX_PORT_FIFO_SIZE));


        if (p_DfltConfig->rx_cut_end_bytes > FRAME_END_DATA_SIZE)
            RETURN_ERROR(
                    MAJOR,
                    E_INVALID_VALUE,
                    ("cutBytesFromEnd can't be larger than %d", FRAME_END_DATA_SIZE));

        if (FmSpCheckBufMargins(&p_Params->bufMargins) != E_OK)
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, NO_MSG);


        if (p_Params->setSizeOfFifo
                && (p_FmPort->fifoBufs.extra % BMI_FIFO_UNITS))
            RETURN_ERROR(
                    MAJOR,
                    E_INVALID_VALUE,
                    ("fifoBufs.extra has to be divisible by %d", BMI_FIFO_UNITS));

        if (p_Params->bufPoolDepletion.poolsGrpModeEnable
                && !p_Params->bufPoolDepletion.numOfPools)
            RETURN_ERROR(
                    MAJOR,
                    E_INVALID_VALUE,
                    ("bufPoolDepletion.numOfPools can not be 0 when poolsGrpModeEnable=TRUE"));
    }





    else
        if (p_FmPort->fifoBufs.extra)
            RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                         (" No fifoBufs.extra for non Rx ports"));




    if ((p_FmPort->portType == e_FM_PORT_TYPE_TX)
            || (p_FmPort->portType == e_FM_PORT_TYPE_TX_10G))
    {
        if (p_DfltConfig->tx_fifo_min_level % BMI_FIFO_UNITS)
            RETURN_ERROR(
                    MAJOR,
                    E_INVALID_VALUE,
                    ("txFifoMinFillLevel has to be divisible by %d", BMI_FIFO_UNITS));
        if (p_DfltConfig->tx_fifo_min_level > (MAX_PORT_FIFO_SIZE - 256))
            RETURN_ERROR(
                    MAJOR,
                    E_INVALID_VALUE,
                    ("txFifoMinFillLevel has to be in the range of 0 - %d", (MAX_PORT_FIFO_SIZE - 256)));
        if (p_DfltConfig->tx_fifo_low_comf_level % BMI_FIFO_UNITS)
            RETURN_ERROR(
                    MAJOR,
                    E_INVALID_VALUE,
                    ("txFifoLowComfLevel has to be divisible by %d", BMI_FIFO_UNITS));
        if ((p_DfltConfig->tx_fifo_low_comf_level < BMI_FIFO_UNITS)
                || (p_DfltConfig->tx_fifo_low_comf_level > MAX_PORT_FIFO_SIZE))
            RETURN_ERROR(
                    MAJOR,
                    E_INVALID_VALUE,
                    ("txFifoLowComfLevel has to be in the range of 256 - %d", MAX_PORT_FIFO_SIZE));

        if (p_FmPort->portType == e_FM_PORT_TYPE_TX)
            if (p_FmPort->p_FmPortDriverParam->dfltCfg.tx_fifo_deq_pipeline_depth
                    > 2)
                RETURN_ERROR(
                        MAJOR, E_INVALID_VALUE,
                        ("fifoDeqPipelineDepth for 1G can't be larger than 2"));
    }





    else
        if (p_DfltConfig->discard_override && p_Params->errorsToDiscard)
            RETURN_ERROR(
                    MAJOR,
                    E_CONFLICT,
                    ("errorsToDiscard is not empty, but frmDiscardOverride selected (all discarded frames to be enqueued to error queue)."));




    if ((p_FmPort->portType == e_FM_PORT_TYPE_RX)
            || (p_FmPort->portType == e_FM_PORT_TYPE_RX_10G)
            || (p_FmPort->portType == e_FM_PORT_TYPE_OH_OFFLINE_PARSING))
    {
        if (p_FmPort->portType == e_FM_PORT_TYPE_OH_OFFLINE_PARSING)
            unusedMask = BMI_STATUS_OP_MASK_UNUSED;
        else
            unusedMask = BMI_STATUS_RX_MASK_UNUSED;


        if (p_Params->errorsToDiscard & unusedMask)
            RETURN_ERROR(MAJOR, E_INVALID_SELECTION,
                         ("errorsToDiscard contains undefined bits"));
    }
    if ((p_FmPort->portType == e_FM_PORT_TYPE_OH_OFFLINE_PARSING)
            || (p_FmPort->portType == e_FM_PORT_TYPE_OH_HOST_COMMAND))
    {

        if ((p_FmPort->fmRevInfo.majorRev < 6) &&
                (p_FmPort->p_FmPortDriverParam->cheksumLastBytesIgnore != DEFAULT_notSupported))

        RETURN_ERROR(MAJOR, E_NOT_SUPPORTED, ("cheksumLastBytesIgnore is available for Rx & Tx ports only"));



        if ((!((p_FmPort->fmRevInfo.majorRev == 4) ||
                                (p_FmPort->fmRevInfo.majorRev >= 6))) &&
                (p_FmPort->p_FmPortDriverParam->dfltCfg.tx_fifo_deq_pipeline_depth != DEFAULT_notSupported))

        RETURN_ERROR(MAJOR, E_INVALID_OPERATION, ("fifoDeqPipelineDepth is available for Tx ports only"));

    }





    if ((p_Params->cheksumLastBytesIgnore > FRAME_END_DATA_SIZE)
            && ((p_Params->cheksumLastBytesIgnore != DEFAULT_notSupported)))
        RETURN_ERROR(
                MAJOR,
                E_INVALID_VALUE,
                ("cheksumLastBytesIgnore can't be larger than %d", FRAME_END_DATA_SIZE));

    if (FmSpCheckIntContextParams(&p_Params->intContext) != E_OK)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, NO_MSG);


    if (p_Params->setNumOfTasks
            && ((!p_FmPort->tasks.num)
                    || (p_FmPort->tasks.num > MAX_NUM_OF_TASKS)))
        RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                     ("tasks.num can't be larger than %d", MAX_NUM_OF_TASKS));
    if (p_Params->setNumOfTasks
            && (p_FmPort->tasks.extra > MAX_NUM_OF_EXTRA_TASKS))
        RETURN_ERROR(
                MAJOR,
                E_INVALID_VALUE,
                ("tasks.extra can't be larger than %d", MAX_NUM_OF_EXTRA_TASKS));
    if (p_Params->setNumOfOpenDmas
            && ((!p_FmPort->openDmas.num)
                    || (p_FmPort->openDmas.num > MAX_NUM_OF_DMAS)))
        RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                     ("openDmas.num can't be larger than %d", MAX_NUM_OF_DMAS));
    if (p_Params->setNumOfOpenDmas
            && (p_FmPort->openDmas.extra > MAX_NUM_OF_EXTRA_DMAS))
        RETURN_ERROR(
                MAJOR,
                E_INVALID_VALUE,
                ("openDmas.extra can't be larger than %d", MAX_NUM_OF_EXTRA_DMAS));
    if (p_Params->setSizeOfFifo
            && (!p_FmPort->fifoBufs.num
                    || (p_FmPort->fifoBufs.num > MAX_PORT_FIFO_SIZE)))
        RETURN_ERROR(
                MAJOR,
                E_INVALID_VALUE,
                ("fifoBufs.num has to be in the range of 256 - %d", MAX_PORT_FIFO_SIZE));
    if (p_Params->setSizeOfFifo && (p_FmPort->fifoBufs.num % BMI_FIFO_UNITS))
        RETURN_ERROR(
                MAJOR, E_INVALID_VALUE,
                ("fifoBufs.num has to be divisible by %d", BMI_FIFO_UNITS));
    return E_OK;
}
