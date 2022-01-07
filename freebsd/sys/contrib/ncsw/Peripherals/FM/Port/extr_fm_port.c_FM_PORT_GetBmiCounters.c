
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_4__ {void* cntUnsupportedFormat; void* cntLengthErr; void* cntWredDiscard; void* cntRxOutOfBuffersDiscard; void* cntRxListDmaErr; void* cntRxFilterFrame; void* cntRxLargeFrame; void* cntRxBadFrame; void* cntDeallocBuf; void* cntDiscardFrame; void* cntFrame; void* cntRxPauseActivation; void* cntFifoUtil; void* cntDmaUtil; void* cntQueueUtil; void* cntTaskUtil; void* cntCycle; } ;
typedef TYPE_1__ t_FmPortBmiStats ;
struct TYPE_5__ {scalar_t__ portType; } ;
typedef TYPE_2__ t_FmPort ;
typedef int t_Error ;


 int E_OK ;
 void* FM_PORT_GetCounter (scalar_t__,int ) ;
 int e_FM_PORT_COUNTERS_CYCLE ;
 int e_FM_PORT_COUNTERS_DEALLOC_BUF ;
 int e_FM_PORT_COUNTERS_DISCARD_FRAME ;
 int e_FM_PORT_COUNTERS_DMA_UTIL ;
 int e_FM_PORT_COUNTERS_FIFO_UTIL ;
 int e_FM_PORT_COUNTERS_FRAME ;
 int e_FM_PORT_COUNTERS_LENGTH_ERR ;
 int e_FM_PORT_COUNTERS_QUEUE_UTIL ;
 int e_FM_PORT_COUNTERS_RX_BAD_FRAME ;
 int e_FM_PORT_COUNTERS_RX_FILTER_FRAME ;
 int e_FM_PORT_COUNTERS_RX_LARGE_FRAME ;
 int e_FM_PORT_COUNTERS_RX_LIST_DMA_ERR ;
 int e_FM_PORT_COUNTERS_RX_OUT_OF_BUFFERS_DISCARD ;
 int e_FM_PORT_COUNTERS_RX_PAUSE_ACTIVATION ;
 int e_FM_PORT_COUNTERS_TASK_UTIL ;
 int e_FM_PORT_COUNTERS_UNSUPPRTED_FORMAT ;
 int e_FM_PORT_COUNTERS_WRED_DISCARD ;
 scalar_t__ e_FM_PORT_TYPE_OH_OFFLINE_PARSING ;
 scalar_t__ e_FM_PORT_TYPE_RX ;
 scalar_t__ e_FM_PORT_TYPE_RX_10G ;
 scalar_t__ e_FM_PORT_TYPE_TX ;
 scalar_t__ e_FM_PORT_TYPE_TX_10G ;

t_Error FM_PORT_GetBmiCounters(t_Handle h_FmPort, t_FmPortBmiStats *p_BmiStats)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    if ((p_FmPort->portType == e_FM_PORT_TYPE_RX)
            || (p_FmPort->portType == e_FM_PORT_TYPE_RX_10G)){
        p_BmiStats->cntCycle =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_CYCLE);

        p_BmiStats->cntTaskUtil =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_TASK_UTIL);

        p_BmiStats->cntQueueUtil =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_QUEUE_UTIL);

        p_BmiStats->cntDmaUtil =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_DMA_UTIL);

        p_BmiStats->cntFifoUtil =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_FIFO_UTIL);

        p_BmiStats->cntRxPauseActivation =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_RX_PAUSE_ACTIVATION);

        p_BmiStats->cntFrame =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_FRAME);

        p_BmiStats->cntDiscardFrame =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_DISCARD_FRAME);

        p_BmiStats->cntDeallocBuf =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_DEALLOC_BUF);

        p_BmiStats->cntRxBadFrame =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_RX_BAD_FRAME);

        p_BmiStats->cntRxLargeFrame =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_RX_LARGE_FRAME);

        p_BmiStats->cntRxFilterFrame =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_RX_FILTER_FRAME);

        p_BmiStats->cntRxListDmaErr =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_RX_LIST_DMA_ERR);

        p_BmiStats->cntRxOutOfBuffersDiscard =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_RX_OUT_OF_BUFFERS_DISCARD);

        p_BmiStats->cntWredDiscard = 0;
        p_BmiStats->cntLengthErr = 0;
        p_BmiStats->cntUnsupportedFormat = 0;
    }
    else if ((p_FmPort->portType == e_FM_PORT_TYPE_TX)
                || (p_FmPort->portType == e_FM_PORT_TYPE_TX_10G)){
        p_BmiStats->cntCycle =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_CYCLE);

        p_BmiStats->cntTaskUtil =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_TASK_UTIL);

        p_BmiStats->cntQueueUtil =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_QUEUE_UTIL);

        p_BmiStats->cntDmaUtil =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_DMA_UTIL);

        p_BmiStats->cntFifoUtil =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_FIFO_UTIL);

        p_BmiStats->cntRxPauseActivation = 0;
        p_BmiStats->cntFrame =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_FRAME);

        p_BmiStats->cntDiscardFrame =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_DISCARD_FRAME);

        p_BmiStats->cntDeallocBuf =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_DEALLOC_BUF);

        p_BmiStats->cntRxBadFrame = 0;
        p_BmiStats->cntRxLargeFrame = 0;
        p_BmiStats->cntRxFilterFrame = 0;
        p_BmiStats->cntRxListDmaErr = 0;
        p_BmiStats->cntRxOutOfBuffersDiscard = 0;
        p_BmiStats->cntWredDiscard = 0;
        p_BmiStats->cntLengthErr =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_LENGTH_ERR);

        p_BmiStats->cntUnsupportedFormat =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_UNSUPPRTED_FORMAT);

    }
    else if (p_FmPort->portType == e_FM_PORT_TYPE_OH_OFFLINE_PARSING) {
        p_BmiStats->cntCycle =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_CYCLE);

        p_BmiStats->cntTaskUtil =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_TASK_UTIL);

        p_BmiStats->cntQueueUtil = 0;
        p_BmiStats->cntDmaUtil =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_DMA_UTIL);

        p_BmiStats->cntFifoUtil =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_FIFO_UTIL);

        p_BmiStats->cntRxPauseActivation = 0;
        p_BmiStats->cntFrame =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_FRAME);

        p_BmiStats->cntDiscardFrame =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_DISCARD_FRAME);

        p_BmiStats->cntDeallocBuf =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_DEALLOC_BUF);

        p_BmiStats->cntRxBadFrame = 0;
        p_BmiStats->cntRxLargeFrame = 0;
        p_BmiStats->cntRxFilterFrame =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_RX_FILTER_FRAME);

        p_BmiStats->cntRxListDmaErr =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_RX_LIST_DMA_ERR);

        p_BmiStats->cntRxOutOfBuffersDiscard =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_RX_OUT_OF_BUFFERS_DISCARD);

        p_BmiStats->cntWredDiscard =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_WRED_DISCARD);

        p_BmiStats->cntLengthErr =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_LENGTH_ERR);

        p_BmiStats->cntUnsupportedFormat =
            FM_PORT_GetCounter(h_FmPort, e_FM_PORT_COUNTERS_UNSUPPRTED_FORMAT);

    }
    return E_OK;
}
