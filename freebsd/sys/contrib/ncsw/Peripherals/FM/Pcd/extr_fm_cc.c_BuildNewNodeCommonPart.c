
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef void* t_Handle ;
struct TYPE_7__ {int numOfKeys; int p_KeysMatchTableOld; int p_AdTableOld; void* p_KeysMatchTableNew; int * p_AdTableNew; } ;
typedef TYPE_1__ t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_8__ {int ccKeySizeAccExtraction; int maxNumOfKeys; int keysMatchTableMaxSize; int h_KeysMatchTable; int h_AdTable; TYPE_3__* h_FmPcd; scalar_t__ lclMask; } ;
typedef TYPE_2__ t_FmPcdCcNode ;
struct TYPE_9__ {void* p_CcShadow; } ;
typedef TYPE_3__ t_FmPcd ;
typedef int t_Error ;


 int E_NO_MEMORY ;
 int E_OK ;
 scalar_t__ FM_MURAM_AllocMem (int ,int,int ) ;
 int FM_MURAM_FreeMem (int ,int *) ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FM_PCD_CC_AD_TABLE_ALIGN ;
 int FM_PCD_CC_KEYS_MATCH_TABLE_ALIGN ;
 int FmPcdGetMuramHandle (TYPE_3__*) ;
 int MAJOR ;
 int MemSet8 (int *,int ,int) ;
 void* PTR_MOVE (void*,int) ;
 int RETURN_ERROR (int ,int ,char*) ;

__attribute__((used)) static t_Error BuildNewNodeCommonPart(
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
        p_AdditionalInfo->p_AdTableNew = (t_Handle)FM_MURAM_AllocMem(
                FmPcdGetMuramHandle(p_FmPcd),
                (uint32_t)((p_AdditionalInfo->numOfKeys + 1)
                        * FM_PCD_CC_AD_ENTRY_SIZE),
                FM_PCD_CC_AD_TABLE_ALIGN);
        if (!p_AdditionalInfo->p_AdTableNew)
            RETURN_ERROR(
                    MAJOR, E_NO_MEMORY,
                    ("MURAM allocation for CC node action descriptors table"));

        p_AdditionalInfo->p_KeysMatchTableNew = (t_Handle)FM_MURAM_AllocMem(
                FmPcdGetMuramHandle(p_FmPcd),
                (uint32_t)(*size * sizeof(uint8_t)
                        * (p_AdditionalInfo->numOfKeys + 1)),
                FM_PCD_CC_KEYS_MATCH_TABLE_ALIGN);
        if (!p_AdditionalInfo->p_KeysMatchTableNew)
        {
            FM_MURAM_FreeMem(FmPcdGetMuramHandle(p_CcNode->h_FmPcd),
                             p_AdditionalInfo->p_AdTableNew);
            p_AdditionalInfo->p_AdTableNew = ((void*)0);
            RETURN_ERROR(MAJOR, E_NO_MEMORY,
                         ("MURAM allocation for CC node key match table"));
        }

        MemSet8(
                (uint8_t*)p_AdditionalInfo->p_AdTableNew,
                0,
                (uint32_t)((p_AdditionalInfo->numOfKeys + 1)
                        * FM_PCD_CC_AD_ENTRY_SIZE));
        MemSet8((uint8_t*)p_AdditionalInfo->p_KeysMatchTableNew, 0,
                   *size * sizeof(uint8_t) * (p_AdditionalInfo->numOfKeys + 1));
    }
    else
    {
        if (!p_FmPcd->p_CcShadow)
            RETURN_ERROR(MAJOR, E_NO_MEMORY, ("CC Shadow not allocated"));

        p_AdditionalInfo->p_KeysMatchTableNew =
                PTR_MOVE(p_FmPcd->p_CcShadow, FM_PCD_CC_AD_ENTRY_SIZE);
        p_AdditionalInfo->p_AdTableNew =
                PTR_MOVE(p_AdditionalInfo->p_KeysMatchTableNew, p_CcNode->keysMatchTableMaxSize);

        MemSet8(
                (uint8_t*)p_AdditionalInfo->p_AdTableNew,
                0,
                (uint32_t)((p_CcNode->maxNumOfKeys + 1)
                        * FM_PCD_CC_AD_ENTRY_SIZE));
        MemSet8((uint8_t*)p_AdditionalInfo->p_KeysMatchTableNew, 0,
                   (*size) * sizeof(uint8_t) * (p_CcNode->maxNumOfKeys));
    }

    p_AdditionalInfo->p_AdTableOld = p_CcNode->h_AdTable;
    p_AdditionalInfo->p_KeysMatchTableOld = p_CcNode->h_KeysMatchTable;

    return E_OK;
}
