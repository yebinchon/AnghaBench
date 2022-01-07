
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int * t_Handle ;
struct TYPE_3__ {scalar_t__ numOfKeys; int h_Spinlock; } ;
typedef TYPE_1__ t_FmPcdCcNode ;
typedef int t_FmPcdCcKeyStatistics ;
typedef scalar_t__ t_Error ;


 int E_INVALID_HANDLE ;
 scalar_t__ E_INVALID_STATE ;
 int E_NULL_POINTER ;
 scalar_t__ E_OK ;
 int MAJOR ;
 scalar_t__ MatchTableGetKeyStatistics (TYPE_1__*,scalar_t__,int *) ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_ERROR (int *,int ) ;
 int XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

t_Error FM_PCD_MatchTableGetKeyStatistics(
        t_Handle h_CcNode, uint16_t keyIndex,
        t_FmPcdCcKeyStatistics *p_KeyStatistics)
{
    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_CcNode;
    uint32_t intFlags;
    t_Error err;

    SANITY_CHECK_RETURN_ERROR(h_CcNode, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_KeyStatistics, E_NULL_POINTER);

    intFlags = XX_LockIntrSpinlock(p_CcNode->h_Spinlock);

    if (keyIndex >= p_CcNode->numOfKeys)
        RETURN_ERROR(
                MAJOR,
                E_INVALID_STATE,
                ("The provided keyIndex exceeds the number of keys in this match table"));

    err = MatchTableGetKeyStatistics(p_CcNode, keyIndex, p_KeyStatistics);

    XX_UnlockIntrSpinlock(p_CcNode->h_Spinlock, intFlags);

    if (err != E_OK)
        RETURN_ERROR(MAJOR, err, NO_MSG);

    return E_OK;
}
