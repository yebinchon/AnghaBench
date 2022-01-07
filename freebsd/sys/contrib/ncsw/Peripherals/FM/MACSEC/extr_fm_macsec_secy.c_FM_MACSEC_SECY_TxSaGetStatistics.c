
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * t_Handle ;
typedef int t_FmMacsecSecYTxSaStatistics ;
typedef int t_Error ;
typedef int * macsecAN_t ;


 int E_NOT_SUPPORTED ;
 int MINOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,int ,int ) ;
 int UNUSED (int *) ;

t_Error FM_MACSEC_SECY_TxSaGetStatistics(t_Handle h_FmMacsecSecY, macsecAN_t an, t_FmMacsecSecYTxSaStatistics *p_Statistics)
{
    UNUSED(h_FmMacsecSecY);UNUSED(an);UNUSED(p_Statistics);
    RETURN_ERROR(MINOR, E_NOT_SUPPORTED, NO_MSG);
}
