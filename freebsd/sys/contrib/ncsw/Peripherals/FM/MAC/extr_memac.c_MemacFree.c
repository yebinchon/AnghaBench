
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* p_MemacDriverParam; } ;
typedef TYPE_1__ t_Memac ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int FreeInitResources (TYPE_1__*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int XX_Free (TYPE_1__*) ;

__attribute__((used)) static t_Error MemacFree(t_Handle h_Memac)
{
    t_Memac *p_Memac = (t_Memac *)h_Memac;

    SANITY_CHECK_RETURN_ERROR(p_Memac, E_INVALID_HANDLE);

    if (p_Memac->p_MemacDriverParam)
    {

        XX_Free(p_Memac->p_MemacDriverParam);
        p_Memac->p_MemacDriverParam = ((void*)0);
    }
    else

        FreeInitResources(p_Memac);

    XX_Free(p_Memac);

    return E_OK;
}
