
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_11__ {int numOfClsPlanEntries; int baseEntry; } ;
typedef TYPE_2__ t_FmPcdKgInterModuleClsPlanSet ;
struct TYPE_12__ {int sizeOfGrp; int baseEntry; int owners; } ;
typedef TYPE_3__ t_FmPcdKgClsPlanGrp ;
struct TYPE_13__ {TYPE_1__* p_FmPcdKg; scalar_t__ h_Hc; } ;
typedef TYPE_4__ t_FmPcd ;
typedef int t_Error ;
struct TYPE_10__ {TYPE_3__* clsPlanGrps; } ;


 int ASSERT_COND (int ) ;
 int E_NO_MEMORY ;
 int E_OK ;
 int FmHcPcdKgDeleteClsPlan (scalar_t__,size_t) ;
 int FmPcdKgDestroyClsPlanGrp (scalar_t__,size_t) ;
 int KgSetClsPlan (TYPE_4__*,TYPE_2__*) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int UnbindPortToClsPlanGrp (TYPE_4__*,size_t) ;
 int XX_Free (TYPE_2__*) ;
 scalar_t__ XX_Malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;

t_Error FmPcdKgDeleteOrUnbindPortToClsPlanGrp(t_Handle h_FmPcd, uint8_t hardwarePortId, uint8_t clsPlanGrpId)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;
    t_FmPcdKgClsPlanGrp *p_ClsPlanGrp = &p_FmPcd->p_FmPcdKg->clsPlanGrps[clsPlanGrpId];
    t_FmPcdKgInterModuleClsPlanSet *p_ClsPlanSet;
    t_Error err;




    UnbindPortToClsPlanGrp(p_FmPcd, hardwarePortId);


    ASSERT_COND(p_ClsPlanGrp->owners);
    p_ClsPlanGrp->owners--;

    if (!p_ClsPlanGrp->owners)
    {
        if (p_FmPcd->h_Hc)
        {
            err = FmHcPcdKgDeleteClsPlan(p_FmPcd->h_Hc, clsPlanGrpId);
            return err;
        }
        else
        {

            p_ClsPlanSet = (t_FmPcdKgInterModuleClsPlanSet *)XX_Malloc(sizeof(t_FmPcdKgInterModuleClsPlanSet));
            if (!p_ClsPlanSet)
            {
                RETURN_ERROR(MAJOR, E_NO_MEMORY, ("Classification plan set"));
            }
            memset(p_ClsPlanSet, 0, sizeof(t_FmPcdKgInterModuleClsPlanSet));

            p_ClsPlanSet->baseEntry = p_FmPcd->p_FmPcdKg->clsPlanGrps[clsPlanGrpId].baseEntry;
            p_ClsPlanSet->numOfClsPlanEntries = p_FmPcd->p_FmPcdKg->clsPlanGrps[clsPlanGrpId].sizeOfGrp;
            KgSetClsPlan(p_FmPcd, p_ClsPlanSet);
            XX_Free(p_ClsPlanSet);

            FmPcdKgDestroyClsPlanGrp(h_FmPcd, clsPlanGrpId);
       }
    }
    return E_OK;
}
