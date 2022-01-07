
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int * t_Handle ;
struct TYPE_12__ {scalar_t__ h_CapwapReassemblyManip; scalar_t__ h_IpReassemblyManip; } ;
typedef TYPE_4__ t_FmPcdCcTree ;
struct TYPE_13__ {size_t numOfKeys; int * h_AdTable; TYPE_6__* keyAndNextEngineParams; } ;
typedef TYPE_5__ t_FmPcdCcNode ;
struct TYPE_9__ {TYPE_5__* h_CcNode; } ;
struct TYPE_10__ {TYPE_1__ ccParams; } ;
struct TYPE_11__ {scalar_t__ nextEngine; scalar_t__ h_Manip; TYPE_2__ params; } ;
struct TYPE_14__ {TYPE_3__ nextEngineParams; } ;
typedef TYPE_6__ t_FmPcdCcKeyAndNextEngineParams ;
typedef scalar_t__ t_Error ;


 int ASSERT_COND (TYPE_5__*) ;
 scalar_t__ E_OK ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 scalar_t__ FmPcdManipUpdate (int *,int *,int *,scalar_t__,int *,int,int,int *,int) ;
 int MAJOR ;
 int NO_MSG ;
 int * PTR_MOVE (int *,int) ;
 int RETURN_ERROR (int ,scalar_t__,int ) ;
 scalar_t__ e_FM_PCD_CC ;
 scalar_t__ e_FM_PCD_INVALID ;

__attribute__((used)) static t_Error CcUpdateParam(
        t_Handle h_FmPcd, t_Handle h_PcdParams, t_Handle h_FmPort,
        t_FmPcdCcKeyAndNextEngineParams *p_CcKeyAndNextEngineParams,
        uint16_t numOfEntries, t_Handle h_Ad, bool validate, uint16_t level,
        t_Handle h_FmTree, bool modify)
{
    t_FmPcdCcNode *p_CcNode;
    t_Error err;
    uint16_t tmp = 0;
    int i = 0;
    t_FmPcdCcTree *p_CcTree = (t_FmPcdCcTree *)h_FmTree;

    level++;

    if (p_CcTree->h_IpReassemblyManip)
    {
        err = FmPcdManipUpdate(h_FmPcd, h_PcdParams, h_FmPort,
                               p_CcTree->h_IpReassemblyManip, ((void*)0), validate,
                               level, h_FmTree, modify);
        if (err)
            RETURN_ERROR(MAJOR, err, NO_MSG);
    }

    if (p_CcTree->h_CapwapReassemblyManip)
    {
        err = FmPcdManipUpdate(h_FmPcd, h_PcdParams, h_FmPort,
                               p_CcTree->h_CapwapReassemblyManip, ((void*)0), validate,
                               level, h_FmTree, modify);
        if (err)
            RETURN_ERROR(MAJOR, err, NO_MSG);
    }

    if (numOfEntries)
    {
        for (i = 0; i < numOfEntries; i++)
        {
            if (i == 0)
                h_Ad = PTR_MOVE(h_Ad, i*FM_PCD_CC_AD_ENTRY_SIZE);
            else
                h_Ad = PTR_MOVE(h_Ad, FM_PCD_CC_AD_ENTRY_SIZE);

            if (p_CcKeyAndNextEngineParams[i].nextEngineParams.nextEngine
                    == e_FM_PCD_CC)
            {
                p_CcNode =
                        p_CcKeyAndNextEngineParams[i].nextEngineParams.params.ccParams.h_CcNode;
                ASSERT_COND(p_CcNode);

                if (p_CcKeyAndNextEngineParams[i].nextEngineParams.h_Manip)
                {
                    err =
                            FmPcdManipUpdate(
                                    h_FmPcd,
                                    ((void*)0),
                                    h_FmPort,
                                    p_CcKeyAndNextEngineParams[i].nextEngineParams.h_Manip,
                                    h_Ad, validate, level, h_FmTree, modify);
                    if (err)
                        RETURN_ERROR(MAJOR, err, NO_MSG);
                }

                if (p_CcNode->keyAndNextEngineParams[p_CcNode->numOfKeys].nextEngineParams.nextEngine
                        != e_FM_PCD_INVALID)
                    tmp = (uint8_t)(p_CcNode->numOfKeys + 1);
                else
                    tmp = p_CcNode->numOfKeys;

                err = CcUpdateParam(h_FmPcd, h_PcdParams, h_FmPort,
                                    p_CcNode->keyAndNextEngineParams, tmp,
                                    p_CcNode->h_AdTable, validate, level,
                                    h_FmTree, modify);
                if (err)
                    RETURN_ERROR(MAJOR, err, NO_MSG);
            }
            else
            {
                if (p_CcKeyAndNextEngineParams[i].nextEngineParams.h_Manip)
                {
                    err =
                            FmPcdManipUpdate(
                                    h_FmPcd,
                                    ((void*)0),
                                    h_FmPort,
                                    p_CcKeyAndNextEngineParams[i].nextEngineParams.h_Manip,
                                    h_Ad, validate, level, h_FmTree, modify);
                    if (err)
                        RETURN_ERROR(MAJOR, err, NO_MSG);
                }
            }
        }
    }

    return E_OK;
}
