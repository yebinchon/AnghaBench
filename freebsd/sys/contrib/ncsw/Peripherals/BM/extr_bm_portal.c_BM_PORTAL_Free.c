
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_4__ {scalar_t__ cpu; int h_Bm; } ;
typedef TYPE_1__ t_BmPortal ;
typedef int e_DpaaSwPortal ;


 int BmSetPortalHandle (int ,int *,int ) ;
 int ERROR_CODE (int ) ;
 int E_INVALID_HANDLE ;
 int E_OK ;
 int XX_Free (TYPE_1__*) ;
 int bman_destroy_portal (TYPE_1__*) ;

t_Error BM_PORTAL_Free(t_Handle h_BmPortal)
{
    t_BmPortal *p_BmPortal = (t_BmPortal *)h_BmPortal;

    if (!p_BmPortal)
       return ERROR_CODE(E_INVALID_HANDLE);
    BmSetPortalHandle(p_BmPortal->h_Bm, ((void*)0), (e_DpaaSwPortal)p_BmPortal->cpu);
    bman_destroy_portal(p_BmPortal);
    XX_Free(p_BmPortal);
    return E_OK;
}
