#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  void* t_Handle ;
struct TYPE_7__ {int numOfKeys; int /*<<< orphan*/  p_KeysMatchTableOld; int /*<<< orphan*/  p_AdTableOld; void* p_KeysMatchTableNew; int /*<<< orphan*/ * p_AdTableNew; } ;
typedef  TYPE_1__ t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_8__ {int ccKeySizeAccExtraction; int maxNumOfKeys; int keysMatchTableMaxSize; int /*<<< orphan*/  h_KeysMatchTable; int /*<<< orphan*/  h_AdTable; TYPE_3__* h_FmPcd; scalar_t__ lclMask; } ;
typedef  TYPE_2__ t_FmPcdCcNode ;
struct TYPE_9__ {void* p_CcShadow; } ;
typedef  TYPE_3__ t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  E_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FM_PCD_CC_AD_ENTRY_SIZE ; 
 int /*<<< orphan*/  FM_PCD_CC_AD_TABLE_ALIGN ; 
 int /*<<< orphan*/  FM_PCD_CC_KEYS_MATCH_TABLE_ALIGN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static t_Error FUNC6(
        t_FmPcdCcNode *p_CcNode, int *size,
        t_FmPcdModifyCcKeyAdditionalParams *p_AdditionalInfo)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)p_CcNode->h_FmPcd;

    if (p_CcNode->lclMask)
        *size = 2 * p_CcNode->ccKeySizeAccExtraction;
    else
        *size = p_CcNode->ccKeySizeAccExtraction;

    if (p_CcNode->maxNumOfKeys == 0)
    {
        p_AdditionalInfo->p_AdTableNew = (t_Handle)FUNC0(
                FUNC2(p_FmPcd),
                (uint32_t)((p_AdditionalInfo->numOfKeys + 1)
                        * FM_PCD_CC_AD_ENTRY_SIZE),
                FM_PCD_CC_AD_TABLE_ALIGN);
        if (!p_AdditionalInfo->p_AdTableNew)
            FUNC5(
                    MAJOR, E_NO_MEMORY,
                    ("MURAM allocation for CC node action descriptors table"));

        p_AdditionalInfo->p_KeysMatchTableNew = (t_Handle)FUNC0(
                FUNC2(p_FmPcd),
                (uint32_t)(*size * sizeof(uint8_t)
                        * (p_AdditionalInfo->numOfKeys + 1)),
                FM_PCD_CC_KEYS_MATCH_TABLE_ALIGN);
        if (!p_AdditionalInfo->p_KeysMatchTableNew)
        {
            FUNC1(FUNC2(p_CcNode->h_FmPcd),
                             p_AdditionalInfo->p_AdTableNew);
            p_AdditionalInfo->p_AdTableNew = NULL;
            FUNC5(MAJOR, E_NO_MEMORY,
                         ("MURAM allocation for CC node key match table"));
        }

        FUNC3(
                (uint8_t*)p_AdditionalInfo->p_AdTableNew,
                0,
                (uint32_t)((p_AdditionalInfo->numOfKeys + 1)
                        * FM_PCD_CC_AD_ENTRY_SIZE));
        FUNC3((uint8_t*)p_AdditionalInfo->p_KeysMatchTableNew, 0,
                   *size * sizeof(uint8_t) * (p_AdditionalInfo->numOfKeys + 1));
    }
    else
    {
        /* The allocated shadow is divided as follows:
         0 . . .       16 . . .
         ---------------------------------------------------
         |   Shadow   |   Shadow Keys   |   Shadow Next    |
         |     Ad     |   Match Table   |   Engine Table   |
         | (16 bytes) | (maximal size)  |  (maximal size)  |
         ---------------------------------------------------
         */

        if (!p_FmPcd->p_CcShadow)
            FUNC5(MAJOR, E_NO_MEMORY, ("CC Shadow not allocated"));

        p_AdditionalInfo->p_KeysMatchTableNew =
                FUNC4(p_FmPcd->p_CcShadow, FM_PCD_CC_AD_ENTRY_SIZE);
        p_AdditionalInfo->p_AdTableNew =
                FUNC4(p_AdditionalInfo->p_KeysMatchTableNew, p_CcNode->keysMatchTableMaxSize);

        FUNC3(
                (uint8_t*)p_AdditionalInfo->p_AdTableNew,
                0,
                (uint32_t)((p_CcNode->maxNumOfKeys + 1)
                        * FM_PCD_CC_AD_ENTRY_SIZE));
        FUNC3((uint8_t*)p_AdditionalInfo->p_KeysMatchTableNew, 0,
                   (*size) * sizeof(uint8_t) * (p_CcNode->maxNumOfKeys));
    }

    p_AdditionalInfo->p_AdTableOld = p_CcNode->h_AdTable;
    p_AdditionalInfo->p_KeysMatchTableOld = p_CcNode->h_KeysMatchTable;

    return E_OK;
}