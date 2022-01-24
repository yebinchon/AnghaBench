#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  t_List ;
typedef  scalar_t__ t_Handle ;
struct TYPE_17__ {int /*<<< orphan*/  p_AdTableOld; int /*<<< orphan*/  p_AdTableNew; int /*<<< orphan*/  p_KeysMatchTableOld; int /*<<< orphan*/  p_KeysMatchTableNew; scalar_t__ h_CurrentNode; } ;
typedef  TYPE_3__ t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_18__ {int ccKeySizeAccExtraction; int maxNumOfKeys; scalar_t__ lclMask; } ;
typedef  TYPE_4__ t_FmPcdCcNode ;
struct TYPE_15__ {scalar_t__ h_CcNode; } ;
struct TYPE_16__ {TYPE_1__ ccParams; } ;
struct TYPE_19__ {TYPE_2__ params; int /*<<< orphan*/  nextEngine; } ;
typedef  TYPE_5__ t_FmPcdCcNextEngineParams ;
typedef  scalar_t__ t_Error ;
struct TYPE_20__ {scalar_t__ h_CcNode; } ;
typedef  TYPE_6__ t_CcNodeInformation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_3__*,TYPE_4__*,TYPE_5__*) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ E_OK ; 
 int FM_PCD_CC_AD_ENTRY_SIZE ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  e_FM_PCD_CC ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static t_Error FUNC10(
        t_Handle h_FmPcd, t_List *h_OldPointersLst, t_List *h_NewPointersLst,
        t_FmPcdModifyCcKeyAdditionalParams *p_AdditionalParams,
        bool useShadowStructs)
{
    t_FmPcdCcNode *p_CcNode =
            (t_FmPcdCcNode *)(p_AdditionalParams->h_CurrentNode);
    t_List *p_PosNew;
    t_CcNodeInformation *p_CcNodeInfo;
    t_FmPcdCcNextEngineParams nextEngineParams;
    t_Handle h_Ad;
    uint32_t keySize;
    t_Error err = E_OK;
    uint8_t numOfModifiedPtr;

    FUNC0(h_FmPcd);

    FUNC9(&nextEngineParams, 0, sizeof(t_FmPcdCcNextEngineParams));

    numOfModifiedPtr = (uint8_t)FUNC6(h_OldPointersLst);

    if (numOfModifiedPtr)
    {

        p_PosNew = FUNC5(h_NewPointersLst);

        /* Invoke host-command to copy from the new Ad to existing Ads */
        err = FUNC3(h_FmPcd, h_OldPointersLst, h_NewPointersLst,
                              p_AdditionalParams, useShadowStructs);
        if (err)
            FUNC7(MAJOR, err, NO_MSG);

		if (useShadowStructs)
		{
			/* When the host-command above has ended, the old structures are 'free'and we can update
			 them by copying from the new shadow structures. */
			if (p_CcNode->lclMask)
				keySize = (uint32_t)(2 * p_CcNode->ccKeySizeAccExtraction);
			else
				keySize = p_CcNode->ccKeySizeAccExtraction;

			FUNC4(p_AdditionalParams->p_KeysMatchTableOld,
					   p_AdditionalParams->p_KeysMatchTableNew,
					   p_CcNode->maxNumOfKeys * keySize * sizeof(uint8_t));

			FUNC4(
					p_AdditionalParams->p_AdTableOld,
					p_AdditionalParams->p_AdTableNew,
					(uint32_t)((p_CcNode->maxNumOfKeys + 1)
							* FM_PCD_CC_AD_ENTRY_SIZE));

			/* Retrieve the address of the allocated Ad */
			p_CcNodeInfo = FUNC2(p_PosNew);
			h_Ad = p_CcNodeInfo->h_CcNode;

			/* Build a new Ad that holds the old (now updated) structures */
			p_AdditionalParams->p_KeysMatchTableNew =
					p_AdditionalParams->p_KeysMatchTableOld;
			p_AdditionalParams->p_AdTableNew = p_AdditionalParams->p_AdTableOld;

			nextEngineParams.nextEngine = e_FM_PCD_CC;
			nextEngineParams.params.ccParams.h_CcNode = (t_Handle)p_CcNode;

			FUNC1(h_Ad, p_AdditionalParams, p_CcNode, &nextEngineParams);

			/* HC to copy from the new Ad (old updated structures) to current Ad (uses shadow structures) */
			err = FUNC3(h_FmPcd, h_OldPointersLst, h_NewPointersLst,
								  p_AdditionalParams, useShadowStructs);
			if (err)
				FUNC7(MAJOR, err, NO_MSG);
		}
    }

    err = FUNC8(h_FmPcd, h_OldPointersLst,
                                       h_NewPointersLst,
                                       p_AdditionalParams, useShadowStructs);
    if (err)
        FUNC7(MAJOR, err, NO_MSG);

    return E_OK;
}