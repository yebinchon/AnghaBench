
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
typedef int t_Error ;
struct TYPE_5__ {TYPE_1__* clsPlanBlocksMng; } ;
struct TYPE_4__ {size_t ownerId; scalar_t__ allocated; } ;


 size_t CLS_PLAN_NUM_PER_GRP ;
 int E_FULL ;
 int E_INVALID_VALUE ;
 int E_OK ;
 size_t FM_PCD_MAX_NUM_OF_CLS_PLANS ;
 int MAJOR ;
 int MINOR ;
 int POWER_OF_2 (size_t) ;
 int RETURN_ERROR (int ,int ,char*) ;
 scalar_t__ TRUE ;

t_Error KgAllocClsPlanEntries(t_Handle h_FmPcd, uint16_t numOfClsPlanEntries, uint8_t guestId, uint8_t *p_First)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;
    uint8_t numOfBlocks, blocksFound=0, first=0;
    uint8_t i, j;




    if (!numOfClsPlanEntries)
        return E_OK;

    if ((numOfClsPlanEntries % CLS_PLAN_NUM_PER_GRP) || (!POWER_OF_2(numOfClsPlanEntries)))
         RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("numOfClsPlanEntries must be a power of 2 and divisible by 8"));

    numOfBlocks = (uint8_t)(numOfClsPlanEntries/CLS_PLAN_NUM_PER_GRP);


    first = 0;
    for (i = 0; i < FM_PCD_MAX_NUM_OF_CLS_PLANS/CLS_PLAN_NUM_PER_GRP;)
    {
        if (!p_FmPcd->p_FmPcdKg->clsPlanBlocksMng[i].allocated)
        {
            blocksFound++;
            i++;
            if (blocksFound == numOfBlocks)
                break;
        }
        else
        {
            blocksFound = 0;

            first = i = (uint8_t)(first + numOfBlocks);
        }
    }

    if (blocksFound == numOfBlocks)
    {
        *p_First = (uint8_t)(first * CLS_PLAN_NUM_PER_GRP);
        for (j = first; j < (first + numOfBlocks); j++)
        {
            p_FmPcd->p_FmPcdKg->clsPlanBlocksMng[j].allocated = TRUE;
            p_FmPcd->p_FmPcdKg->clsPlanBlocksMng[j].ownerId = guestId;
        }
        return E_OK;
    }
    else
        RETURN_ERROR(MINOR, E_FULL, ("No resources for clsPlan"));
}
