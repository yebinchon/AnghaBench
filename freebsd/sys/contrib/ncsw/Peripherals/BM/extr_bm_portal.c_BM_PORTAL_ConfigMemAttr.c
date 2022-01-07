
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_3__ {int hwExtStructsMemAttr; struct TYPE_3__* p_BmPortalDriverParams; } ;
typedef TYPE_1__ t_BmPortal ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error BM_PORTAL_ConfigMemAttr(t_Handle h_BmPortal, uint32_t hwExtStructsMemAttr)
{
    t_BmPortal *p_BmPortal = (t_BmPortal *)h_BmPortal;

    SANITY_CHECK_RETURN_ERROR(p_BmPortal, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_BmPortal->p_BmPortalDriverParams, E_INVALID_HANDLE);

    p_BmPortal->p_BmPortalDriverParams->hwExtStructsMemAttr = hwExtStructsMemAttr;

    return E_OK;
}
