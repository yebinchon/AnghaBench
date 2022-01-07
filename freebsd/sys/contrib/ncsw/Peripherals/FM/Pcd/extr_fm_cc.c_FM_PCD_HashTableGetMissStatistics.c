
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_14__ {TYPE_4__* keyAndNextEngineParams; int statsEnForMiss; } ;
typedef TYPE_5__ t_FmPcdCcNode ;
typedef TYPE_5__ t_FmPcdCcKeyStatistics ;
typedef int t_Error ;
struct TYPE_10__ {scalar_t__ h_CcNode; } ;
struct TYPE_11__ {TYPE_1__ ccParams; } ;
struct TYPE_12__ {TYPE_2__ params; } ;
struct TYPE_13__ {TYPE_3__ nextEngineParams; } ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_NULL_POINTER ;
 int FM_PCD_MatchTableGetMissStatistics (scalar_t__,TYPE_5__*) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_5__*,int ) ;

t_Error FM_PCD_HashTableGetMissStatistics(
        t_Handle h_HashTbl, t_FmPcdCcKeyStatistics *p_MissStatistics)
{
    t_FmPcdCcNode *p_HashTbl = (t_FmPcdCcNode *)h_HashTbl;
    t_Handle h_HashBucket;

    SANITY_CHECK_RETURN_ERROR(p_HashTbl, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_MissStatistics, E_NULL_POINTER);

    if (!p_HashTbl->statsEnForMiss)
        RETURN_ERROR(MAJOR, E_INVALID_STATE,
                     ("Statistics were not enabled for miss"));

    h_HashBucket =
            p_HashTbl->keyAndNextEngineParams[0].nextEngineParams.params.ccParams.h_CcNode;

    return FM_PCD_MatchTableGetMissStatistics(h_HashBucket, p_MissStatistics);
}
