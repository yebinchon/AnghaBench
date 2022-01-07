
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* p_Ipv6ReassTbl; TYPE_1__* p_Ipv4ReassTbl; } ;
struct TYPE_15__ {TYPE_4__ ip; TYPE_6__* p_ReassCommonTbl; } ;
struct TYPE_16__ {TYPE_5__ reassmParams; TYPE_2__* specificHdrStatistics; int totalNCSPCounter; void* nonConsistentSp; int totalDmaSemaphoreDepletionCounter; void* dmaSemaphoreDepletion; int totalSgFragmentCounter; void* sgFragments; int totalExternalBufferBusy; void* externalBufferBusy; int totalInternalBufferBusy; void* internalBufferBusy; int totalRfdPoolBusyCounter; void* rfdPoolBusy; int totalTimeOutCounter; void* timeout; } ;
typedef TYPE_6__ t_FmPcdManipReassemIpStats ;
typedef TYPE_6__ t_FmPcdManip ;
typedef int t_Error ;
struct TYPE_13__ {int totalMoreThan16FramesCounter; int totalDiscardedFragsCounter; int totalSetBusyCounter; int totalMalformdFragCounter; int totalProcessedFragCounter; int totalValidFragmentCounter; int totalSuccessfullyReasmFramesCounter; } ;
struct TYPE_12__ {void* moreThan16Fragments; void* discardedFragments; void* autoLearnBusy; void* malformedFragments; void* processedFragments; void* validFragments; void* successfullyReassembled; } ;
struct TYPE_11__ {int totalMoreThan16FramesCounter; int totalDiscardedFragsCounter; int totalSetBusyCounter; int totalMalformdFragCounter; int totalProcessedFragCounter; int totalValidFragmentCounter; int totalSuccessfullyReasmFramesCounter; } ;


 int ASSERT_COND (TYPE_6__*) ;
 int E_OK ;
 void* GET_UINT32 (int ) ;

__attribute__((used)) static t_Error IpReassemblyStats(t_FmPcdManip *p_Manip,
                                 t_FmPcdManipReassemIpStats *p_Stats)
{
    ASSERT_COND(p_Manip);
    ASSERT_COND(p_Stats);
    ASSERT_COND(p_Manip->reassmParams.p_ReassCommonTbl);

    p_Stats->timeout =
            GET_UINT32(p_Manip->reassmParams.p_ReassCommonTbl->totalTimeOutCounter);
    p_Stats->rfdPoolBusy =
            GET_UINT32(p_Manip->reassmParams.p_ReassCommonTbl->totalRfdPoolBusyCounter);
    p_Stats->internalBufferBusy =
            GET_UINT32(p_Manip->reassmParams.p_ReassCommonTbl->totalInternalBufferBusy);
    p_Stats->externalBufferBusy =
            GET_UINT32(p_Manip->reassmParams.p_ReassCommonTbl->totalExternalBufferBusy);
    p_Stats->sgFragments =
            GET_UINT32(p_Manip->reassmParams.p_ReassCommonTbl->totalSgFragmentCounter);
    p_Stats->dmaSemaphoreDepletion =
            GET_UINT32(p_Manip->reassmParams.p_ReassCommonTbl->totalDmaSemaphoreDepletionCounter);





    if (p_Manip->reassmParams.ip.p_Ipv4ReassTbl)
    {
        p_Stats->specificHdrStatistics[0].successfullyReassembled =
                GET_UINT32(p_Manip->reassmParams.ip.p_Ipv4ReassTbl->totalSuccessfullyReasmFramesCounter);
        p_Stats->specificHdrStatistics[0].validFragments =
                GET_UINT32(p_Manip->reassmParams.ip.p_Ipv4ReassTbl->totalValidFragmentCounter);
        p_Stats->specificHdrStatistics[0].processedFragments =
                GET_UINT32(p_Manip->reassmParams.ip.p_Ipv4ReassTbl->totalProcessedFragCounter);
        p_Stats->specificHdrStatistics[0].malformedFragments =
                GET_UINT32(p_Manip->reassmParams.ip.p_Ipv4ReassTbl->totalMalformdFragCounter);
        p_Stats->specificHdrStatistics[0].autoLearnBusy =
                GET_UINT32(p_Manip->reassmParams.ip.p_Ipv4ReassTbl->totalSetBusyCounter);
        p_Stats->specificHdrStatistics[0].discardedFragments =
                GET_UINT32(p_Manip->reassmParams.ip.p_Ipv4ReassTbl->totalDiscardedFragsCounter);
        p_Stats->specificHdrStatistics[0].moreThan16Fragments =
                GET_UINT32(p_Manip->reassmParams.ip.p_Ipv4ReassTbl->totalMoreThan16FramesCounter);
    }
    if (p_Manip->reassmParams.ip.p_Ipv6ReassTbl)
    {
        p_Stats->specificHdrStatistics[1].successfullyReassembled =
                GET_UINT32(p_Manip->reassmParams.ip.p_Ipv6ReassTbl->totalSuccessfullyReasmFramesCounter);
        p_Stats->specificHdrStatistics[1].validFragments =
                GET_UINT32(p_Manip->reassmParams.ip.p_Ipv6ReassTbl->totalValidFragmentCounter);
        p_Stats->specificHdrStatistics[1].processedFragments =
                GET_UINT32(p_Manip->reassmParams.ip.p_Ipv6ReassTbl->totalProcessedFragCounter);
        p_Stats->specificHdrStatistics[1].malformedFragments =
                GET_UINT32(p_Manip->reassmParams.ip.p_Ipv6ReassTbl->totalMalformdFragCounter);
        p_Stats->specificHdrStatistics[1].autoLearnBusy =
                GET_UINT32(p_Manip->reassmParams.ip.p_Ipv6ReassTbl->totalSetBusyCounter);
        p_Stats->specificHdrStatistics[1].discardedFragments =
                GET_UINT32(p_Manip->reassmParams.ip.p_Ipv6ReassTbl->totalDiscardedFragsCounter);
        p_Stats->specificHdrStatistics[1].moreThan16Fragments =
                GET_UINT32(p_Manip->reassmParams.ip.p_Ipv6ReassTbl->totalMoreThan16FramesCounter);
    }
    return E_OK;
}
