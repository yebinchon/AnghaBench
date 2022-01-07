
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_3__ {int halfdup_on; struct TYPE_3__* p_DtsecDriverParam; } ;
typedef TYPE_1__ t_Dtsec ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

__attribute__((used)) static t_Error DtsecConfigHalfDuplex(t_Handle h_Dtsec, bool newVal)
{
    t_Dtsec *p_Dtsec = (t_Dtsec *)h_Dtsec;

    SANITY_CHECK_RETURN_ERROR(p_Dtsec, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_Dtsec->p_DtsecDriverParam, E_INVALID_STATE);

    p_Dtsec->p_DtsecDriverParam->halfdup_on = newVal;

    return E_OK;
}
