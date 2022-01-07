
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_Handle ;
typedef int t_Error ;
typedef int e_FmMacsecSecYEvents ;


 int E_NOT_SUPPORTED ;
 int MINOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,int ,int ) ;
 int UNUSED (int) ;

t_Error FM_MACSEC_SECY_SetEvent(t_Handle h_FmMacsecSecY, e_FmMacsecSecYEvents event, bool enable)
{
    UNUSED(h_FmMacsecSecY);UNUSED(event);UNUSED(enable);
    RETURN_ERROR(MINOR, E_NOT_SUPPORTED, NO_MSG);
}
