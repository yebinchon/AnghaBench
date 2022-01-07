
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {scalar_t__ guestId; int prsMaxParseCycleLimit; struct TYPE_3__* p_FmPcdDriverParam; } ;
typedef TYPE_1__ t_FmPcd ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_NOT_SUPPORTED ;
 int E_OK ;
 int MAJOR ;
 scalar_t__ NCSW_MASTER_ID ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error FM_PCD_ConfigPrsMaxCycleLimit(t_Handle h_FmPcd,uint16_t value)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;

    SANITY_CHECK_RETURN_ERROR(p_FmPcd, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPcd->p_FmPcdDriverParam, E_INVALID_HANDLE);

    if(p_FmPcd->guestId != NCSW_MASTER_ID)
        RETURN_ERROR(MAJOR, E_NOT_SUPPORTED, ("FM_PCD_ConfigPrsMaxCycleLimit - guest mode!"));

    p_FmPcd->p_FmPcdDriverParam->prsMaxParseCycleLimit = value;

    return E_OK;
}
