
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint16_t ;
typedef TYPE_5__* t_Handle ;
struct TYPE_17__ {int numOfKeys; struct TYPE_17__* h_MissStatsCounters; struct TYPE_17__* h_FmPcd; TYPE_4__* keyAndNextEngineParams; } ;
typedef TYPE_5__ t_FmPcdCcNode ;
typedef int t_Error ;
struct TYPE_13__ {TYPE_5__* h_CcNode; } ;
struct TYPE_14__ {TYPE_1__ ccParams; } ;
struct TYPE_15__ {TYPE_2__ params; } ;
struct TYPE_16__ {TYPE_3__ nextEngineParams; } ;


 int E_INVALID_HANDLE ;
 int E_NO_MEMORY ;
 int E_OK ;
 int FM_MURAM_FreeMem (int ,TYPE_5__*) ;
 int FM_PCD_MatchTableDelete (TYPE_5__*) ;
 int FmPcdGetMuramHandle (TYPE_5__*) ;
 int MAJOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,int,int ) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_5__*,int ) ;
 int XX_Free (TYPE_5__**) ;
 scalar_t__ XX_Malloc (int) ;

t_Error FM_PCD_HashTableDelete(t_Handle h_HashTbl)
{
    t_FmPcdCcNode *p_HashTbl = (t_FmPcdCcNode *)h_HashTbl;
    t_Handle h_FmPcd;
    t_Handle *p_HashBuckets, h_MissStatsCounters;
    uint16_t i, numOfBuckets;
    t_Error err;

    SANITY_CHECK_RETURN_ERROR(p_HashTbl, E_INVALID_HANDLE);


    numOfBuckets = p_HashTbl->numOfKeys;

    p_HashBuckets = (t_Handle *)XX_Malloc(numOfBuckets * sizeof(t_Handle));
    if (!p_HashBuckets)
        RETURN_ERROR(MAJOR, E_NO_MEMORY, NO_MSG);

    for (i = 0; i < numOfBuckets; i++)
        p_HashBuckets[i] =
                p_HashTbl->keyAndNextEngineParams[i].nextEngineParams.params.ccParams.h_CcNode;

    h_FmPcd = p_HashTbl->h_FmPcd;
    h_MissStatsCounters = p_HashTbl->h_MissStatsCounters;


    err = FM_PCD_MatchTableDelete(p_HashTbl);


    for (i = 0; i < numOfBuckets; i++)
        err |= FM_PCD_MatchTableDelete(p_HashBuckets[i]);

    XX_Free(p_HashBuckets);


    if (h_MissStatsCounters)
        FM_MURAM_FreeMem(FmPcdGetMuramHandle(h_FmPcd), h_MissStatsCounters);

    if (err)
        RETURN_ERROR(MAJOR, err, NO_MSG);

    return E_OK;
}
