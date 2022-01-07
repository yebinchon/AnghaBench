
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int h_Spinlock; struct TYPE_4__* owners; } ;
typedef TYPE_1__ t_FmPcdCcNode ;


 int ASSERT_COND (TYPE_1__*) ;
 int XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

__attribute__((used)) static void UpdateNodeOwner(t_FmPcdCcNode *p_CcNode, bool add)
{
    uint32_t intFlags;

    ASSERT_COND(p_CcNode);

    intFlags = XX_LockIntrSpinlock(p_CcNode->h_Spinlock);

    if (add)
        p_CcNode->owners++;
    else
    {
        ASSERT_COND(p_CcNode->owners);
        p_CcNode->owners--;
    }

    XX_UnlockIntrSpinlock(p_CcNode->h_Spinlock, intFlags);
}
