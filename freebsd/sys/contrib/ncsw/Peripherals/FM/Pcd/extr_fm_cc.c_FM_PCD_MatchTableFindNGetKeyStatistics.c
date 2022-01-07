
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {scalar_t__ numOfKeys; int h_Spinlock; } ;
typedef TYPE_1__ t_FmPcdCcNode ;
typedef int t_FmPcdCcKeyStatistics ;
typedef scalar_t__ t_Error ;


 int ASSERT_COND (int) ;
 int E_NULL_POINTER ;
 scalar_t__ E_OK ;
 scalar_t__ FindKeyIndex (TYPE_1__*,int ,int *,int *,scalar_t__*) ;
 scalar_t__ GET_ERROR_TYPE (scalar_t__) ;
 int MAJOR ;
 scalar_t__ MatchTableGetKeyStatistics (TYPE_1__*,scalar_t__,int *) ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_ERROR (int *,int ) ;
 int XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

t_Error FM_PCD_MatchTableFindNGetKeyStatistics(
        t_Handle h_CcNode, uint8_t keySize, uint8_t *p_Key, uint8_t *p_Mask,
        t_FmPcdCcKeyStatistics *p_KeyStatistics)
{
    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_CcNode;
    uint16_t keyIndex;
    uint32_t intFlags;
    t_Error err;

    SANITY_CHECK_RETURN_ERROR(p_Key, E_NULL_POINTER);
    SANITY_CHECK_RETURN_ERROR(p_KeyStatistics, E_NULL_POINTER);

    intFlags = XX_LockIntrSpinlock(p_CcNode->h_Spinlock);

    err = FindKeyIndex(p_CcNode, keySize, p_Key, p_Mask, &keyIndex);
    if (GET_ERROR_TYPE(err) != E_OK)
    {
        XX_UnlockIntrSpinlock(p_CcNode->h_Spinlock, intFlags);
        RETURN_ERROR(MAJOR, err,
                     ("The received key and mask pair was not found in the "
                     "match table of the provided node"));
    }

    ASSERT_COND(keyIndex < p_CcNode->numOfKeys);

    err = MatchTableGetKeyStatistics(p_CcNode, keyIndex, p_KeyStatistics);

    XX_UnlockIntrSpinlock(p_CcNode->h_Spinlock, intFlags);

    if (err != E_OK)
        RETURN_ERROR(MAJOR, err, NO_MSG);

    return E_OK;
}
