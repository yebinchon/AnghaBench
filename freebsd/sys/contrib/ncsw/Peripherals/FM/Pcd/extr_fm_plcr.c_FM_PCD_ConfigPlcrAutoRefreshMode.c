
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int plcrAutoRefresh; struct TYPE_3__* p_FmPcdDriverParam; int h_Fm; struct TYPE_3__* p_FmPcdPlcr; } ;
typedef TYPE_1__ t_FmPcd ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_NOT_SUPPORTED ;
 int E_OK ;
 int FmIsMaster (int ) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error FM_PCD_ConfigPlcrAutoRefreshMode(t_Handle h_FmPcd, bool enable)
{
   t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;

    SANITY_CHECK_RETURN_ERROR(p_FmPcd, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPcd->p_FmPcdDriverParam, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPcd->p_FmPcdPlcr, E_INVALID_HANDLE);

    if (!FmIsMaster(p_FmPcd->h_Fm))
        RETURN_ERROR(MAJOR, E_NOT_SUPPORTED, ("FM_PCD_ConfigPlcrAutoRefreshMode - guest mode!"));

    p_FmPcd->p_FmPcdDriverParam->plcrAutoRefresh = enable;

    return E_OK;
}
