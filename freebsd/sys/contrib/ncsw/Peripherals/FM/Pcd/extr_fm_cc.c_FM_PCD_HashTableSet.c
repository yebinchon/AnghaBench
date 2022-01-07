
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_12__ ;


typedef int uint16_t ;
typedef TYPE_8__* t_Handle ;
struct TYPE_31__ {scalar_t__ nextEngine; int statisticsEn; } ;
struct TYPE_32__ {int maxNumOfKeys; scalar_t__ statisticsMode; int numOfKeys; int keySize; void* maskSupport; TYPE_12__* keyParams; TYPE_3__ ccNextEngineParamsForMiss; } ;
struct TYPE_29__ {int size; int icIndxMask; scalar_t__ offset; int action; int src; } ;
struct TYPE_30__ {TYPE_1__ extractNonHdr; void* type; } ;
struct TYPE_36__ {int maxNumOfKeys; int hashResMask; scalar_t__ statisticsMode; int matchKeySize; int statsEnForMiss; struct TYPE_36__* h_MissStatsCounters; int kgHashShift; TYPE_4__ keysParams; TYPE_2__ extractCcParams; scalar_t__ hashShift; void* isHashBucket; TYPE_3__ ccNextEngineParamsForMiss; } ;
typedef TYPE_8__ t_FmPcdHashTableParams ;
typedef TYPE_8__ t_FmPcdCcNodeParams ;
typedef TYPE_8__ t_FmPcdCcNode ;
struct TYPE_33__ {TYPE_8__* h_CcNode; } ;
struct TYPE_35__ {TYPE_5__ ccParams; } ;
struct TYPE_34__ {TYPE_7__ params; void* statisticsEn; int nextEngine; } ;
struct TYPE_28__ {TYPE_6__ ccNextEngineParams; } ;
typedef TYPE_12__ t_FmPcdCcKeyParams ;
typedef scalar_t__ t_Error ;


 int DBG (int ,char*) ;
 scalar_t__ DIV_CEIL (int,int) ;
 int E_INVALID_HANDLE ;
 int E_INVALID_VALUE ;
 int E_NO_MEMORY ;
 int E_NULL_POINTER ;
 void* FALSE ;
 scalar_t__ FM_MURAM_AllocMem (int ,int,int ) ;
 int FM_MURAM_FreeMem (int ,TYPE_8__*) ;
 int FM_PCD_CC_AD_TABLE_ALIGN ;
 int FM_PCD_CC_STATS_COUNTER_SIZE ;
 int FM_PCD_MatchTableDelete (TYPE_8__*) ;
 TYPE_8__* FM_PCD_MatchTableSet (TYPE_8__*,TYPE_8__*) ;
 int FmPcdGetMuramHandle (TYPE_8__*) ;
 int INFO ;
 int MAJOR ;
 int MINOR ;
 scalar_t__ MatchTableSet (TYPE_8__*,TYPE_8__*,TYPE_8__*) ;
 char* NO_MSG ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_8__*,int ,int *) ;
 void* TRUE ;
 int XX_Free (TYPE_8__*) ;
 scalar_t__ XX_Malloc (int) ;
 int e_FM_PCD_ACTION_EXACT_MATCH ;
 int e_FM_PCD_ACTION_INDEXED_LOOKUP ;
 int e_FM_PCD_CC ;
 scalar_t__ e_FM_PCD_CC_STATS_MODE_BYTE_AND_FRAME ;
 scalar_t__ e_FM_PCD_CC_STATS_MODE_FRAME ;
 scalar_t__ e_FM_PCD_CC_STATS_MODE_NONE ;
 scalar_t__ e_FM_PCD_CC_STATS_MODE_RMON ;
 int e_FM_PCD_EXTRACT_FROM_HASH ;
 int e_FM_PCD_EXTRACT_FROM_KEY ;
 void* e_FM_PCD_EXTRACT_NON_HDR ;
 scalar_t__ e_FM_PCD_INVALID ;
 int memset (TYPE_8__*,int ,int) ;

t_Handle FM_PCD_HashTableSet(t_Handle h_FmPcd, t_FmPcdHashTableParams *p_Param)
{
    t_FmPcdCcNode *p_CcNodeHashTbl;
    t_FmPcdCcNodeParams *p_IndxHashCcNodeParam, *p_ExactMatchCcNodeParam;
    t_FmPcdCcNode *p_CcNode;
    t_Handle h_MissStatsCounters = ((void*)0);
    t_FmPcdCcKeyParams *p_HashKeyParams;
    int i;
    uint16_t numOfSets, numOfWays, countMask, onesCount = 0;
    bool statsEnForMiss = FALSE;
    t_Error err;

    SANITY_CHECK_RETURN_VALUE(h_FmPcd, E_INVALID_HANDLE, ((void*)0));
    SANITY_CHECK_RETURN_VALUE(p_Param, E_NULL_POINTER, ((void*)0));

    if (p_Param->maxNumOfKeys == 0)
    {
        REPORT_ERROR(MINOR, E_INVALID_VALUE, ("Max number of keys must be higher then 0"));
        return ((void*)0);
    }

    if (p_Param->hashResMask == 0)
    {
        REPORT_ERROR(MINOR, E_INVALID_VALUE, ("Hash result mask must differ from 0"));
        return ((void*)0);
    }


    if (p_Param->ccNextEngineParamsForMiss.nextEngine == e_FM_PCD_INVALID)
    {
        REPORT_ERROR(MAJOR, E_INVALID_VALUE, ("Next PCD Engine for on-miss entry is invalid. On-miss entry is always required. You can use e_FM_PCD_DONE."));
        return ((void*)0);
    }
    p_ExactMatchCcNodeParam = (t_FmPcdCcNodeParams*)XX_Malloc(
            sizeof(t_FmPcdCcNodeParams));
    if (!p_ExactMatchCcNodeParam)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("p_ExactMatchCcNodeParam"));
        return ((void*)0);
    }
    memset(p_ExactMatchCcNodeParam, 0, sizeof(t_FmPcdCcNodeParams));

    p_IndxHashCcNodeParam = (t_FmPcdCcNodeParams*)XX_Malloc(
            sizeof(t_FmPcdCcNodeParams));
    if (!p_IndxHashCcNodeParam)
    {
        XX_Free(p_ExactMatchCcNodeParam);
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("p_IndxHashCcNodeParam"));
        return ((void*)0);
    }
    memset(p_IndxHashCcNodeParam, 0, sizeof(t_FmPcdCcNodeParams));


    countMask = (uint16_t)(p_Param->hashResMask >> 4);
    while (countMask)
    {
        onesCount++;
        countMask = (uint16_t)(countMask >> 1);
    }

    numOfSets = (uint16_t)(1 << onesCount);
    numOfWays = (uint16_t)DIV_CEIL(p_Param->maxNumOfKeys, numOfSets);

    if (p_Param->maxNumOfKeys % numOfSets)
        DBG(INFO, ("'maxNumOfKeys' is not a multiple of hash number of ways, so number of ways will be rounded up"));

    if ((p_Param->statisticsMode == e_FM_PCD_CC_STATS_MODE_FRAME)
            || (p_Param->statisticsMode == e_FM_PCD_CC_STATS_MODE_BYTE_AND_FRAME))
    {


        h_MissStatsCounters = (t_Handle)FM_MURAM_AllocMem(
                FmPcdGetMuramHandle(h_FmPcd), 2 * FM_PCD_CC_STATS_COUNTER_SIZE,
                FM_PCD_CC_AD_TABLE_ALIGN);
        if (!h_MissStatsCounters)
        {
            REPORT_ERROR(MAJOR, E_NO_MEMORY, ("MURAM allocation for statistics table for hash miss"));
            XX_Free(p_IndxHashCcNodeParam);
            XX_Free(p_ExactMatchCcNodeParam);
            return ((void*)0);
        }
        memset(h_MissStatsCounters, 0, (2 * FM_PCD_CC_STATS_COUNTER_SIZE));




        statsEnForMiss = p_Param->ccNextEngineParamsForMiss.statisticsEn;
        p_Param->ccNextEngineParamsForMiss.statisticsEn = TRUE;
    }


    p_ExactMatchCcNodeParam->extractCcParams.type = e_FM_PCD_EXTRACT_NON_HDR;

    p_ExactMatchCcNodeParam->extractCcParams.extractNonHdr.src =
            e_FM_PCD_EXTRACT_FROM_KEY;
    p_ExactMatchCcNodeParam->extractCcParams.extractNonHdr.action =
            e_FM_PCD_ACTION_EXACT_MATCH;
    p_ExactMatchCcNodeParam->extractCcParams.extractNonHdr.offset = 0;
    p_ExactMatchCcNodeParam->extractCcParams.extractNonHdr.size =
            p_Param->matchKeySize;

    p_ExactMatchCcNodeParam->keysParams.maxNumOfKeys = numOfWays;
    p_ExactMatchCcNodeParam->keysParams.maskSupport = FALSE;
    p_ExactMatchCcNodeParam->keysParams.statisticsMode =
            p_Param->statisticsMode;
    p_ExactMatchCcNodeParam->keysParams.numOfKeys = 0;
    p_ExactMatchCcNodeParam->keysParams.keySize = p_Param->matchKeySize;
    p_ExactMatchCcNodeParam->keysParams.ccNextEngineParamsForMiss =
            p_Param->ccNextEngineParamsForMiss;

    p_HashKeyParams = p_IndxHashCcNodeParam->keysParams.keyParams;

    for (i = 0; i < numOfSets; i++)
    {



        p_CcNode = (t_FmPcdCcNode *)XX_Malloc(sizeof(t_FmPcdCcNode));
        if (!p_CcNode)
            break;
        memset(p_CcNode, 0, sizeof(t_FmPcdCcNode));

        p_CcNode->isHashBucket = TRUE;
        p_CcNode->h_MissStatsCounters = h_MissStatsCounters;

        err = MatchTableSet(h_FmPcd, p_CcNode, p_ExactMatchCcNodeParam);
        if (err)
            break;

        p_HashKeyParams[i].ccNextEngineParams.nextEngine = e_FM_PCD_CC;
        p_HashKeyParams[i].ccNextEngineParams.statisticsEn = FALSE;
        p_HashKeyParams[i].ccNextEngineParams.params.ccParams.h_CcNode =
                p_CcNode;
    }

    if (i < numOfSets)
    {
        for (i = i - 1; i >= 0; i--)
            FM_PCD_MatchTableDelete(
                    p_HashKeyParams[i].ccNextEngineParams.params.ccParams.h_CcNode);

        FM_MURAM_FreeMem(FmPcdGetMuramHandle(h_FmPcd), h_MissStatsCounters);

        REPORT_ERROR(MAJOR, E_NULL_POINTER, NO_MSG);
        XX_Free(p_IndxHashCcNodeParam);
        XX_Free(p_ExactMatchCcNodeParam);
        return ((void*)0);
    }


    p_IndxHashCcNodeParam->extractCcParams.type = e_FM_PCD_EXTRACT_NON_HDR;
    p_IndxHashCcNodeParam->extractCcParams.extractNonHdr.src =
            e_FM_PCD_EXTRACT_FROM_HASH;
    p_IndxHashCcNodeParam->extractCcParams.extractNonHdr.action =
            e_FM_PCD_ACTION_INDEXED_LOOKUP;
    p_IndxHashCcNodeParam->extractCcParams.extractNonHdr.icIndxMask =
            p_Param->hashResMask;
    p_IndxHashCcNodeParam->extractCcParams.extractNonHdr.offset =
            p_Param->hashShift;
    p_IndxHashCcNodeParam->extractCcParams.extractNonHdr.size = 2;

    p_IndxHashCcNodeParam->keysParams.maxNumOfKeys = numOfSets;
    p_IndxHashCcNodeParam->keysParams.maskSupport = FALSE;
    p_IndxHashCcNodeParam->keysParams.statisticsMode =
            e_FM_PCD_CC_STATS_MODE_NONE;

    p_IndxHashCcNodeParam->keysParams.numOfKeys = numOfSets;
    p_IndxHashCcNodeParam->keysParams.keySize = 2;

    p_CcNodeHashTbl = FM_PCD_MatchTableSet(h_FmPcd, p_IndxHashCcNodeParam);

    if (p_CcNodeHashTbl)
    {
        p_CcNodeHashTbl->kgHashShift = p_Param->kgHashShift;



        p_CcNodeHashTbl->h_MissStatsCounters = h_MissStatsCounters;
        p_CcNodeHashTbl->statsEnForMiss = statsEnForMiss;
    }

    XX_Free(p_IndxHashCcNodeParam);
    XX_Free(p_ExactMatchCcNodeParam);

    return p_CcNodeHashTbl;
}
