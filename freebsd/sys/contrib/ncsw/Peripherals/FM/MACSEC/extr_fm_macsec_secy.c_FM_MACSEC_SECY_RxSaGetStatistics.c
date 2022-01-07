
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * t_Handle ;
typedef int t_FmMacsecSecYRxSaStatistics ;
typedef int t_Error ;
typedef int * macsecAN_t ;


 int E_NOT_SUPPORTED ;
 int MINOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,int ,int ) ;
 int UNUSED (int *) ;

t_Error FM_MACSEC_SECY_RxSaGetStatistics(t_Handle h_FmMacsecSecY, t_Handle h_Sc, macsecAN_t an, t_FmMacsecSecYRxSaStatistics *p_Statistics)
{
    UNUSED(h_FmMacsecSecY);UNUSED(h_Sc);UNUSED(an);UNUSED(p_Statistics);
    RETURN_ERROR(MINOR, E_NOT_SUPPORTED, NO_MSG);
}
