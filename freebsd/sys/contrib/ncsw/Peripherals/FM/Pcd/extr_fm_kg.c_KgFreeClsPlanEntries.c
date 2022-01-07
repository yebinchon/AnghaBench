
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_6__ {TYPE_2__* p_FmPcdKg; } ;
typedef TYPE_3__ t_FmPcd ;
struct TYPE_5__ {TYPE_1__* clsPlanBlocksMng; } ;
struct TYPE_4__ {int allocated; size_t ownerId; } ;


 int ASSERT_COND (int) ;
 size_t CLS_PLAN_NUM_PER_GRP ;
 int FALSE ;
 int UNUSED (size_t) ;

void KgFreeClsPlanEntries(t_Handle h_FmPcd, uint16_t numOfClsPlanEntries, uint8_t guestId, uint8_t base)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    uint8_t numOfBlocks;
    uint8_t i, baseBlock;
    numOfBlocks = (uint8_t)(numOfClsPlanEntries/CLS_PLAN_NUM_PER_GRP);
    ASSERT_COND(!(base%CLS_PLAN_NUM_PER_GRP));

    baseBlock = (uint8_t)(base/CLS_PLAN_NUM_PER_GRP);
    for (i=baseBlock;i<baseBlock+numOfBlocks;i++)
    {
        ASSERT_COND(p_FmPcd->p_FmPcdKg->clsPlanBlocksMng[i].allocated);
        ASSERT_COND(guestId == p_FmPcd->p_FmPcdKg->clsPlanBlocksMng[i].ownerId);
        p_FmPcd->p_FmPcdKg->clsPlanBlocksMng[i].allocated = FALSE;
        p_FmPcd->p_FmPcdKg->clsPlanBlocksMng[i].ownerId = 0;
    }
}
