
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


typedef scalar_t__ t_Handle ;
struct TYPE_14__ {int numOfKeys; TYPE_5__* keyAndNextEngineParams; scalar_t__ owners; struct TYPE_14__* h_FmPcd; } ;
typedef TYPE_6__ t_FmPcdCcNode ;
typedef int t_Error ;
struct TYPE_10__ {scalar_t__ h_FrmReplic; } ;
struct TYPE_9__ {int h_CcNode; } ;
struct TYPE_11__ {TYPE_2__ frParams; TYPE_1__ ccParams; } ;
struct TYPE_12__ {scalar_t__ nextEngine; TYPE_3__ params; scalar_t__ h_Manip; } ;
struct TYPE_13__ {TYPE_4__ nextEngineParams; } ;


 int DeleteNode (TYPE_6__*) ;
 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_OK ;
 int FALSE ;
 int FmPcdManipUpdateOwner (scalar_t__,int ) ;
 int FrmReplicGroupUpdateOwner (scalar_t__,int ) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_6__*,int ) ;
 int UpdateNodeOwner (int ,int ) ;
 scalar_t__ e_FM_PCD_CC ;
 scalar_t__ e_FM_PCD_FR ;

t_Error FM_PCD_MatchTableDelete(t_Handle h_CcNode)
{
    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_CcNode;
    int i = 0;

    SANITY_CHECK_RETURN_ERROR(p_CcNode, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_CcNode->h_FmPcd, E_INVALID_HANDLE);

    if (p_CcNode->owners)
        RETURN_ERROR(
                MAJOR,
                E_INVALID_STATE,
                ("This node cannot be removed because it is occupied; first unbind this node"));

    for (i = 0; i < p_CcNode->numOfKeys; i++)
        if (p_CcNode->keyAndNextEngineParams[i].nextEngineParams.nextEngine
                == e_FM_PCD_CC)
            UpdateNodeOwner(
                    p_CcNode->keyAndNextEngineParams[i].nextEngineParams.params.ccParams.h_CcNode,
                    FALSE);

    if (p_CcNode->keyAndNextEngineParams[i].nextEngineParams.nextEngine
            == e_FM_PCD_CC)
        UpdateNodeOwner(
                p_CcNode->keyAndNextEngineParams[i].nextEngineParams.params.ccParams.h_CcNode,
                FALSE);


    for (i = 0; i < p_CcNode->numOfKeys + 1; i++)
    {
        if (p_CcNode->keyAndNextEngineParams[i].nextEngineParams.h_Manip)
            FmPcdManipUpdateOwner(
                    p_CcNode->keyAndNextEngineParams[i].nextEngineParams.h_Manip,
                    FALSE);
    }

    DeleteNode(p_CcNode);

    return E_OK;
}
