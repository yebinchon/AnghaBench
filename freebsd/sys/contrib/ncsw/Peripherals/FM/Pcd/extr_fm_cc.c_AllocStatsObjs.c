
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef void* t_Handle ;
struct TYPE_8__ {void* h_StatsCounters; void* h_StatsAd; } ;
typedef TYPE_1__ t_FmPcdStatsObj ;
struct TYPE_9__ {scalar_t__ maxNumOfKeys; int availableStatsLst; int countersArraySize; int h_FmPcd; } ;
typedef TYPE_2__ t_FmPcdCcNode ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_NO_MEMORY ;
 int E_OK ;
 int EnqueueStatsObj (int *,TYPE_1__*) ;
 scalar_t__ FM_MURAM_AllocMem (void*,int ,int ) ;
 int FM_MURAM_FreeMem (void*,void*) ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FM_PCD_CC_AD_TABLE_ALIGN ;
 void* FmPcdGetMuramHandle (int ) ;
 int FreeStatObjects (int *,void*) ;
 int MAJOR ;
 int MemSet8 (void*,int ,int ) ;
 int RETURN_ERROR (int ,int ,char*) ;
 int XX_Free (TYPE_1__*) ;
 TYPE_1__* XX_Malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static t_Error AllocStatsObjs(t_FmPcdCcNode *p_CcNode)
{
    t_FmPcdStatsObj *p_StatsObj;
    t_Handle h_FmMuram, h_StatsAd, h_StatsCounters;
    uint32_t i;

    h_FmMuram = FmPcdGetMuramHandle(p_CcNode->h_FmPcd);
    if (!h_FmMuram)
        RETURN_ERROR(MAJOR, E_INVALID_HANDLE, ("FM MURAM"));



    for (i = 0; i < p_CcNode->maxNumOfKeys + 2; i++)
    {

        p_StatsObj = XX_Malloc(sizeof(t_FmPcdStatsObj));
        if (!p_StatsObj)
        {
            FreeStatObjects(&p_CcNode->availableStatsLst, h_FmMuram);
            RETURN_ERROR(MAJOR, E_NO_MEMORY, ("Statistics object"));
        }
        memset(p_StatsObj, 0, sizeof(t_FmPcdStatsObj));


        h_StatsAd = (t_Handle)FM_MURAM_AllocMem(h_FmMuram,
                                                FM_PCD_CC_AD_ENTRY_SIZE,
                                                FM_PCD_CC_AD_TABLE_ALIGN);
        if (!h_StatsAd)
        {
            FreeStatObjects(&p_CcNode->availableStatsLst, h_FmMuram);
            XX_Free(p_StatsObj);
            RETURN_ERROR(MAJOR, E_NO_MEMORY,
                         ("MURAM allocation for statistics ADs"));
        }
        MemSet8(h_StatsAd, 0, FM_PCD_CC_AD_ENTRY_SIZE);


        h_StatsCounters = (t_Handle)FM_MURAM_AllocMem(
                h_FmMuram, p_CcNode->countersArraySize,
                FM_PCD_CC_AD_TABLE_ALIGN);
        if (!h_StatsCounters)
        {
            FreeStatObjects(&p_CcNode->availableStatsLst, h_FmMuram);
            FM_MURAM_FreeMem(h_FmMuram, h_StatsAd);
            XX_Free(p_StatsObj);
            RETURN_ERROR(MAJOR, E_NO_MEMORY,
                         ("MURAM allocation for statistics counters"));
        }
        MemSet8(h_StatsCounters, 0, p_CcNode->countersArraySize);

        p_StatsObj->h_StatsAd = h_StatsAd;
        p_StatsObj->h_StatsCounters = h_StatsCounters;

        EnqueueStatsObj(&p_CcNode->availableStatsLst, p_StatsObj);
    }

    return E_OK;
}
