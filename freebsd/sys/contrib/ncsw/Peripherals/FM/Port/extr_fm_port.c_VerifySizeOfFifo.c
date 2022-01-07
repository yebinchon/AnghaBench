
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {int num; } ;
struct TYPE_13__ {int num; } ;
struct TYPE_10__ {int numOfPools; int largestBufSize; int secondLargestBufSize; } ;
struct TYPE_9__ {int majorRev; } ;
struct TYPE_15__ {scalar_t__ portType; TYPE_6__ fifoBufs; TYPE_5__ tasks; TYPE_4__* p_FmPortDriverParam; int maxFrameLength; TYPE_2__ rxPoolsParams; TYPE_1__ fmRevInfo; scalar_t__ imEn; } ;
typedef TYPE_7__ t_FmPort ;
typedef int t_Error ;
struct TYPE_11__ {int tx_fifo_deq_pipeline_depth; } ;
struct TYPE_12__ {TYPE_3__ dfltCfg; } ;


 int ASSERT_COND (int) ;
 int BMI_FIFO_UNITS ;
 int DBG (int ,char*) ;
 int E_OK ;
 int INFO ;
 int MIN (int ,int ) ;
 scalar_t__ ROUND_UP (int ,int) ;
 scalar_t__ e_FM_PORT_TYPE_OH_HOST_COMMAND ;
 scalar_t__ e_FM_PORT_TYPE_OH_OFFLINE_PARSING ;
 scalar_t__ e_FM_PORT_TYPE_RX ;
 scalar_t__ e_FM_PORT_TYPE_RX_10G ;
 scalar_t__ e_FM_PORT_TYPE_TX ;
 scalar_t__ e_FM_PORT_TYPE_TX_10G ;

__attribute__((used)) static t_Error VerifySizeOfFifo(t_FmPort *p_FmPort)
{
    uint32_t minFifoSizeRequired = 0, optFifoSizeForB2B = 0;




    if ((p_FmPort->portType == e_FM_PORT_TYPE_TX)
            || (p_FmPort->portType == e_FM_PORT_TYPE_TX_10G))
    {
        minFifoSizeRequired =
                (uint32_t)(ROUND_UP(p_FmPort->maxFrameLength, BMI_FIFO_UNITS)
                        + (3 * BMI_FIFO_UNITS));
        if (!p_FmPort->imEn)
            minFifoSizeRequired +=
                    p_FmPort->p_FmPortDriverParam->dfltCfg.tx_fifo_deq_pipeline_depth
                            * BMI_FIFO_UNITS;

        optFifoSizeForB2B = minFifoSizeRequired;




        if (p_FmPort->portType == e_FM_PORT_TYPE_TX_10G)
            optFifoSizeForB2B += 3 * BMI_FIFO_UNITS;
        else
            optFifoSizeForB2B += 2 * BMI_FIFO_UNITS;
    }




    else
        if (((p_FmPort->portType == e_FM_PORT_TYPE_RX)
                || (p_FmPort->portType == e_FM_PORT_TYPE_RX_10G))
                && p_FmPort->imEn)
        {
            optFifoSizeForB2B =
                    minFifoSizeRequired =
                            (uint32_t)(ROUND_UP(p_FmPort->maxFrameLength, BMI_FIFO_UNITS)
                                    + (4 * BMI_FIFO_UNITS));
        }




        else
            if (((p_FmPort->portType == e_FM_PORT_TYPE_RX)
                    || (p_FmPort->portType == e_FM_PORT_TYPE_RX_10G))
                    && !p_FmPort->imEn)
            {
                if (p_FmPort->fmRevInfo.majorRev == 4)
                {
                    if (p_FmPort->rxPoolsParams.numOfPools == 1)
                        minFifoSizeRequired = 8 * BMI_FIFO_UNITS;
                    else
                        minFifoSizeRequired =
                                (uint32_t)(ROUND_UP(p_FmPort->rxPoolsParams.secondLargestBufSize, BMI_FIFO_UNITS)
                                        + (7 * BMI_FIFO_UNITS));
                }
                else
                {






                    minFifoSizeRequired = (uint32_t)
                    (ROUND_UP(MIN(p_FmPort->maxFrameLength, p_FmPort->rxPoolsParams.largestBufSize), BMI_FIFO_UNITS)
                            + (7*BMI_FIFO_UNITS));

                }

                optFifoSizeForB2B = minFifoSizeRequired;




                if (p_FmPort->portType == e_FM_PORT_TYPE_RX_10G)
                    optFifoSizeForB2B += 8 * BMI_FIFO_UNITS;
                else
                    optFifoSizeForB2B += 3 * BMI_FIFO_UNITS;
            }


            else
                if ((p_FmPort->portType == e_FM_PORT_TYPE_OH_OFFLINE_PARSING)
                        || (p_FmPort->portType == e_FM_PORT_TYPE_OH_HOST_COMMAND))
                {
                    optFifoSizeForB2B = minFifoSizeRequired = (uint32_t)((p_FmPort->tasks.num + 2) * BMI_FIFO_UNITS);

                }

    ASSERT_COND(minFifoSizeRequired > 0);
    ASSERT_COND(optFifoSizeForB2B >= minFifoSizeRequired);


    if (p_FmPort->fifoBufs.num < minFifoSizeRequired)
        DBG(INFO,
           ("FIFO size is %d and should be enlarged to %d bytes",p_FmPort->fifoBufs.num, minFifoSizeRequired));
    else if (p_FmPort->fifoBufs.num < optFifoSizeForB2B)
        DBG(INFO,
     ("For back-to-back frames processing, FIFO size is %d and needs to enlarge to %d bytes", p_FmPort->fifoBufs.num, optFifoSizeForB2B));

    return E_OK;
}
