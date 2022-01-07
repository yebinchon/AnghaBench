
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_7__ {scalar_t__ numOfClsPlanEntries; int baseEntry; } ;
typedef TYPE_1__ t_FmPcdKgInterModuleClsPlanSet ;
struct TYPE_8__ {int h_FmPcd; } ;
typedef TYPE_2__ t_FmHc ;
typedef scalar_t__ t_Error ;


 int ASSERT_COND (int) ;
 int E_INVALID_STATE ;
 int E_NO_MEMORY ;
 scalar_t__ E_OK ;
 scalar_t__ FM_PCD_MAX_NUM_OF_CLS_PLANS ;
 scalar_t__ FmHcPcdKgSetClsPlan (TYPE_2__*,TYPE_1__*) ;
 int FmPcdKgDestroyClsPlanGrp (int ,int ) ;
 int FmPcdKgGetClsPlanGrpBase (int ,int ) ;
 scalar_t__ FmPcdKgGetClsPlanGrpSize (int ,int ) ;
 int MAJOR ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,int ,char*) ;
 int XX_Free (TYPE_1__*) ;
 scalar_t__ XX_Malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

t_Error FmHcPcdKgDeleteClsPlan(t_Handle h_FmHc, uint8_t grpId)
{
    t_FmHc *p_FmHc = (t_FmHc*)h_FmHc;
    t_FmPcdKgInterModuleClsPlanSet *p_ClsPlanSet;

    p_ClsPlanSet = (t_FmPcdKgInterModuleClsPlanSet *)XX_Malloc(sizeof(t_FmPcdKgInterModuleClsPlanSet));
    if (!p_ClsPlanSet)
        RETURN_ERROR(MAJOR, E_NO_MEMORY, ("Classification plan set"));

    memset(p_ClsPlanSet, 0, sizeof(t_FmPcdKgInterModuleClsPlanSet));

    p_ClsPlanSet->baseEntry = FmPcdKgGetClsPlanGrpBase(p_FmHc->h_FmPcd, grpId);
    p_ClsPlanSet->numOfClsPlanEntries = FmPcdKgGetClsPlanGrpSize(p_FmHc->h_FmPcd, grpId);
    ASSERT_COND(p_ClsPlanSet->numOfClsPlanEntries <= FM_PCD_MAX_NUM_OF_CLS_PLANS);

    if (FmHcPcdKgSetClsPlan(p_FmHc, p_ClsPlanSet) != E_OK)
    {
        XX_Free(p_ClsPlanSet);
        RETURN_ERROR(MAJOR, E_INVALID_STATE, NO_MSG);
    }

    XX_Free(p_ClsPlanSet);
    FmPcdKgDestroyClsPlanGrp(p_FmHc->h_FmPcd, grpId);

    return E_OK;
}
