
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int pnExhThr; struct TYPE_3__* p_FmMacsecDriverParam; } ;
typedef TYPE_1__ t_FmMacsec ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

__attribute__((used)) static t_Error MacsecConfigPnExhaustionThreshold(t_Handle h_FmMacsec, uint32_t pnExhThr)
{
    t_FmMacsec *p_FmMacsec = (t_FmMacsec*)h_FmMacsec;

    SANITY_CHECK_RETURN_ERROR(p_FmMacsec, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmMacsec->p_FmMacsecDriverParam, E_INVALID_HANDLE);

    p_FmMacsec->p_FmMacsecDriverParam->pnExhThr = pnExhThr;

    return E_OK;
}
