
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int (* f_FM_MACSEC_ConfigUntagFrameTreatment ) (scalar_t__,int ) ;} ;
typedef TYPE_1__ t_FmMacsecControllerDriver ;
typedef int t_Error ;
typedef int e_FmMacsecUntagFrameTreatment ;


 int E_INVALID_HANDLE ;
 int E_NOT_SUPPORTED ;
 int MINOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,int ,int ) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int stub1 (scalar_t__,int ) ;

t_Error FM_MACSEC_ConfigUntagFrameTreatment(t_Handle h_FmMacsec, e_FmMacsecUntagFrameTreatment treatMode)
{
    t_FmMacsecControllerDriver *p_FmMacsecControllerDriver = (t_FmMacsecControllerDriver *)h_FmMacsec;

    SANITY_CHECK_RETURN_ERROR(p_FmMacsecControllerDriver, E_INVALID_HANDLE);

    if (p_FmMacsecControllerDriver->f_FM_MACSEC_ConfigUntagFrameTreatment)
        return p_FmMacsecControllerDriver->f_FM_MACSEC_ConfigUntagFrameTreatment(h_FmMacsec, treatMode);

    RETURN_ERROR(MINOR, E_NOT_SUPPORTED, NO_MSG);
}
