#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t_List ;
typedef  int /*<<< orphan*/ * t_Handle ;
typedef  int /*<<< orphan*/  t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_13__ {int /*<<< orphan*/ * h_Ad; int /*<<< orphan*/  ccTreeIdLst; int /*<<< orphan*/  ccPrevNodesLst; } ;
typedef  TYPE_1__ t_FmPcdCcNode ;
struct TYPE_14__ {scalar_t__ h_Manip; } ;
typedef  TYPE_2__ t_FmPcdCcNextEngineParams ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_15__ {int /*<<< orphan*/ * h_CcNode; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ t_CcNodeInformation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FM_PCD_CC_AD_ENTRY_SIZE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__**) ; 

__attribute__((used)) static t_Error FUNC9(
        t_FmPcdCcNode *p_CcNode,
        t_FmPcdModifyCcKeyAdditionalParams *p_FmPcdModifyCcKeyAdditionalParams,
        t_List *h_OldLst, t_List *h_NewLst)
{
    t_FmPcdCcNextEngineParams *p_NextEngineParams = NULL;
    t_CcNodeInformation ccNodeInfo = { 0 };
    t_Handle h_NewAd;
    t_Handle h_OrigAd = NULL;

    /* Building a list of all action descriptors that point to the previous node */
    if (!FUNC5(&p_CcNode->ccPrevNodesLst))
        FUNC7(p_CcNode, h_OldLst,
                                                   &p_NextEngineParams);

    if (!FUNC5(&p_CcNode->ccTreeIdLst))
        FUNC8(p_CcNode, h_OldLst,
                                                   &p_NextEngineParams);

    /* This node must be found as next engine of one of its previous nodes or trees*/
    if (p_NextEngineParams)
    {
        /* Building a new action descriptor that points to the modified node */
        h_NewAd = FUNC3(p_CcNode, FALSE);
        if (!h_NewAd)
            FUNC6(MAJOR, E_NO_MEMORY, NO_MSG);
        FUNC4(h_NewAd, 0, FM_PCD_CC_AD_ENTRY_SIZE);

        h_OrigAd = p_CcNode->h_Ad;
        FUNC0(h_NewAd, p_FmPcdModifyCcKeyAdditionalParams, p_CcNode,
                   p_NextEngineParams);

        ccNodeInfo.h_CcNode = h_NewAd;
        FUNC1(h_NewLst, &ccNodeInfo, NULL);

        if (p_NextEngineParams->h_Manip && !h_OrigAd)
            FUNC2(p_NextEngineParams->h_Manip, FALSE);
    }
    return E_OK;
}