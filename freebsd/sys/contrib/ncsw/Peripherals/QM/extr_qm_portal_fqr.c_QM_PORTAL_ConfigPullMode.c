
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pullMode; struct TYPE_3__* p_QmPortalDriverParams; } ;
typedef TYPE_1__ t_QmPortal ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_NULL_POINTER ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error QM_PORTAL_ConfigPullMode(t_Handle h_QmPortal, bool pullMode)
{
    t_QmPortal *p_QmPortal = (t_QmPortal *)h_QmPortal;

    SANITY_CHECK_RETURN_ERROR(p_QmPortal, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_QmPortal->p_QmPortalDriverParams, E_NULL_POINTER);

    p_QmPortal->p_QmPortalDriverParams->pullMode = pullMode;

    return E_OK;
}
