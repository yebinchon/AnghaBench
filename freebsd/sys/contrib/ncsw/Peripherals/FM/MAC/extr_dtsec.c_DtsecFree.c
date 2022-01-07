
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_5__ {struct TYPE_5__* p_DtsecDriverParam; } ;
typedef TYPE_1__ t_Dtsec ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int FreeInitResources (TYPE_1__*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int XX_Free (TYPE_1__*) ;

__attribute__((used)) static t_Error DtsecFree(t_Handle h_Dtsec)
{
    t_Dtsec *p_Dtsec = (t_Dtsec *)h_Dtsec;

    SANITY_CHECK_RETURN_ERROR(p_Dtsec, E_INVALID_HANDLE);

    if (p_Dtsec->p_DtsecDriverParam)
    {

        XX_Free(p_Dtsec->p_DtsecDriverParam);
        p_Dtsec->p_DtsecDriverParam = ((void*)0);
    }
    else

        FreeInitResources(p_Dtsec);

    XX_Free(p_Dtsec);

    return E_OK;
}
