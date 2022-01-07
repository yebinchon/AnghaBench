
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_5__ {int h_Spinlock; scalar_t__ h_FmPcd; scalar_t__ h_Ad; scalar_t__ h_TmpAd; scalar_t__ maxNumOfKeys; } ;
typedef TYPE_1__ t_FmPcdCcNode ;
struct TYPE_6__ {int h_FmMuram; } ;
typedef TYPE_2__ t_FmPcd ;
typedef int t_Error ;


 int ASSERT_COND (TYPE_1__*) ;
 int E_NO_MEMORY ;
 int E_OK ;
 scalar_t__ FM_MURAM_AllocMem (int ,int ,int ) ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FM_PCD_CC_AD_TABLE_ALIGN ;
 int FillAdOfTypeContLookup (scalar_t__,int *,scalar_t__,TYPE_1__*,int *,int *) ;
 int MAJOR ;
 int MemSet8 (scalar_t__,int ,int ) ;
 int RETURN_ERROR (int ,int ,char*) ;
 int XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

__attribute__((used)) static t_Error AllocAndFillAdForContLookupManip(t_Handle h_CcNode)
{
    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_CcNode;
    uint32_t intFlags;

    ASSERT_COND(p_CcNode);

    intFlags = XX_LockIntrSpinlock(p_CcNode->h_Spinlock);

    if (!p_CcNode->h_Ad)
    {
        if (p_CcNode->maxNumOfKeys)
            p_CcNode->h_Ad = p_CcNode->h_TmpAd;
        else
            p_CcNode->h_Ad = (t_Handle)FM_MURAM_AllocMem(
                    ((t_FmPcd *)(p_CcNode->h_FmPcd))->h_FmMuram,
                    FM_PCD_CC_AD_ENTRY_SIZE, FM_PCD_CC_AD_TABLE_ALIGN);

        XX_UnlockIntrSpinlock(p_CcNode->h_Spinlock, intFlags);

        if (!p_CcNode->h_Ad)
            RETURN_ERROR(MAJOR, E_NO_MEMORY,
                         ("MURAM allocation for CC action descriptor"));

        MemSet8(p_CcNode->h_Ad, 0, FM_PCD_CC_AD_ENTRY_SIZE);

        FillAdOfTypeContLookup(p_CcNode->h_Ad, ((void*)0), p_CcNode->h_FmPcd,
                               p_CcNode, ((void*)0), ((void*)0));
    }
    else
        XX_UnlockIntrSpinlock(p_CcNode->h_Spinlock, intFlags);

    return E_OK;
}
