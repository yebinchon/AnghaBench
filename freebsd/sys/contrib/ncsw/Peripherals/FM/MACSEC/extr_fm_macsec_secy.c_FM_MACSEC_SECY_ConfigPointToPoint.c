
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int numOfRxSc; int sciInsertionMode; int isPointToPoint; struct TYPE_3__* p_FmMacsecSecYDriverParam; } ;
typedef TYPE_1__ t_FmMacsecSecY ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int TRUE ;
 int e_FM_MACSEC_SCI_INSERTION_MODE_IMPLICT_PTP ;

t_Error FM_MACSEC_SECY_ConfigPointToPoint(t_Handle h_FmMacsecSecY)
{
    t_FmMacsecSecY *p_FmMacsecSecY = (t_FmMacsecSecY *)h_FmMacsecSecY;

    SANITY_CHECK_RETURN_ERROR(p_FmMacsecSecY, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmMacsecSecY->p_FmMacsecSecYDriverParam, E_INVALID_STATE);

    p_FmMacsecSecY->numOfRxSc = 1;
    p_FmMacsecSecY->isPointToPoint = TRUE;
    p_FmMacsecSecY->sciInsertionMode = e_FM_MACSEC_SCI_INSERTION_MODE_IMPLICT_PTP;

    return E_OK;
}
