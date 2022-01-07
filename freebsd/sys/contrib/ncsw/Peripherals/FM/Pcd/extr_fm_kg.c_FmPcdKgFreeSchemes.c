
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_5__ {TYPE_1__* schemesMng; struct TYPE_5__* p_FmPcdKg; } ;
typedef TYPE_2__ t_FmPcd ;
typedef int t_Error ;
struct TYPE_4__ {size_t ownerId; scalar_t__ allocated; } ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_OK ;
 scalar_t__ FALSE ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_2__*,int ) ;

t_Error FmPcdKgFreeSchemes(t_Handle h_FmPcd, uint8_t numOfSchemes, uint8_t guestId, uint8_t *p_SchemesIds)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;
    uint8_t i;

    SANITY_CHECK_RETURN_ERROR(p_FmPcd, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPcd->p_FmPcdKg, E_INVALID_HANDLE);




    for (i = 0; i < numOfSchemes; i++)
    {
        if (!p_FmPcd->p_FmPcdKg->schemesMng[p_SchemesIds[i]].allocated)
        {
            RETURN_ERROR(MAJOR, E_INVALID_STATE, ("Scheme was not previously allocated"));
        }
        if (p_FmPcd->p_FmPcdKg->schemesMng[p_SchemesIds[i]].ownerId != guestId)
        {
            RETURN_ERROR(MAJOR, E_INVALID_STATE, ("Scheme is not owned by caller. "));
        }
        p_FmPcd->p_FmPcdKg->schemesMng[p_SchemesIds[i]].allocated = FALSE;
        p_FmPcd->p_FmPcdKg->schemesMng[p_SchemesIds[i]].ownerId = 0;
    }

    return E_OK;
}
