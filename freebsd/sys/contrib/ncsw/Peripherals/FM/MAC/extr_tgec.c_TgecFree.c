
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* p_TgecDriverParam; } ;
typedef TYPE_1__ t_Tgec ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int FreeInitResources (TYPE_1__*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int XX_Free (TYPE_1__*) ;

__attribute__((used)) static t_Error TgecFree(t_Handle h_Tgec)
{
    t_Tgec *p_Tgec = (t_Tgec *)h_Tgec;

    SANITY_CHECK_RETURN_ERROR(p_Tgec, E_INVALID_HANDLE);

    if (p_Tgec->p_TgecDriverParam)
    {

        XX_Free(p_Tgec->p_TgecDriverParam);
        p_Tgec->p_TgecDriverParam = ((void*)0);
    }
    else

        FreeInitResources(p_Tgec);

    XX_Free(p_Tgec);

    return E_OK;
}
