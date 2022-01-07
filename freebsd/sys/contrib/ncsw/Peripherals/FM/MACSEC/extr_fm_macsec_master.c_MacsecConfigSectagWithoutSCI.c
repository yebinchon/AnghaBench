
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int mflSubtract; struct TYPE_3__* p_FmMacsecDriverParam; int sectagOverhead; } ;
typedef TYPE_1__ t_FmMacsec ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 scalar_t__ MACSEC_SCI_SIZE ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

__attribute__((used)) static t_Error MacsecConfigSectagWithoutSCI(t_Handle h_FmMacsec)
{
    t_FmMacsec *p_FmMacsec = (t_FmMacsec*)h_FmMacsec;

    SANITY_CHECK_RETURN_ERROR(p_FmMacsec, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmMacsec->p_FmMacsecDriverParam, E_INVALID_HANDLE);

    p_FmMacsec->p_FmMacsecDriverParam->sectagOverhead -= MACSEC_SCI_SIZE;
    p_FmMacsec->p_FmMacsecDriverParam->mflSubtract += MACSEC_SCI_SIZE;

    return E_OK;
}
