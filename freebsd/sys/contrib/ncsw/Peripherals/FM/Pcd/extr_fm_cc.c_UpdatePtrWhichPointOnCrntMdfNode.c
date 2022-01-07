
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int t_List ;
typedef int * t_Handle ;
typedef int t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_13__ {int * h_Ad; int ccTreeIdLst; int ccPrevNodesLst; } ;
typedef TYPE_1__ t_FmPcdCcNode ;
struct TYPE_14__ {scalar_t__ h_Manip; } ;
typedef TYPE_2__ t_FmPcdCcNextEngineParams ;
typedef int t_Error ;
struct TYPE_15__ {int * h_CcNode; int member_0; } ;
typedef TYPE_3__ t_CcNodeInformation ;


 int BuildNewAd (int *,int *,TYPE_1__*,TYPE_2__*) ;
 int E_NO_MEMORY ;
 int E_OK ;
 int EnqueueNodeInfoToRelevantLst (int *,TYPE_3__*,int *) ;
 int FALSE ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FmPcdManipUpdateOwner (scalar_t__,int ) ;
 int * GetNewAd (TYPE_1__*,int ) ;
 int MAJOR ;
 int MemSet8 (int *,int ,int ) ;
 int NCSW_LIST_IsEmpty (int *) ;
 int NO_MSG ;
 int RETURN_ERROR (int ,int ,int ) ;
 int UpdateAdPtrOfNodesWhichPointsOnCrntMdfNode (TYPE_1__*,int *,TYPE_2__**) ;
 int UpdateAdPtrOfTreesWhichPointsOnCrntMdfNode (TYPE_1__*,int *,TYPE_2__**) ;

__attribute__((used)) static t_Error UpdatePtrWhichPointOnCrntMdfNode(
        t_FmPcdCcNode *p_CcNode,
        t_FmPcdModifyCcKeyAdditionalParams *p_FmPcdModifyCcKeyAdditionalParams,
        t_List *h_OldLst, t_List *h_NewLst)
{
    t_FmPcdCcNextEngineParams *p_NextEngineParams = ((void*)0);
    t_CcNodeInformation ccNodeInfo = { 0 };
    t_Handle h_NewAd;
    t_Handle h_OrigAd = ((void*)0);


    if (!NCSW_LIST_IsEmpty(&p_CcNode->ccPrevNodesLst))
        UpdateAdPtrOfNodesWhichPointsOnCrntMdfNode(p_CcNode, h_OldLst,
                                                   &p_NextEngineParams);

    if (!NCSW_LIST_IsEmpty(&p_CcNode->ccTreeIdLst))
        UpdateAdPtrOfTreesWhichPointsOnCrntMdfNode(p_CcNode, h_OldLst,
                                                   &p_NextEngineParams);


    if (p_NextEngineParams)
    {

        h_NewAd = GetNewAd(p_CcNode, FALSE);
        if (!h_NewAd)
            RETURN_ERROR(MAJOR, E_NO_MEMORY, NO_MSG);
        MemSet8(h_NewAd, 0, FM_PCD_CC_AD_ENTRY_SIZE);

        h_OrigAd = p_CcNode->h_Ad;
        BuildNewAd(h_NewAd, p_FmPcdModifyCcKeyAdditionalParams, p_CcNode,
                   p_NextEngineParams);

        ccNodeInfo.h_CcNode = h_NewAd;
        EnqueueNodeInfoToRelevantLst(h_NewLst, &ccNodeInfo, ((void*)0));

        if (p_NextEngineParams->h_Manip && !h_OrigAd)
            FmPcdManipUpdateOwner(p_NextEngineParams->h_Manip, FALSE);
    }
    return E_OK;
}
