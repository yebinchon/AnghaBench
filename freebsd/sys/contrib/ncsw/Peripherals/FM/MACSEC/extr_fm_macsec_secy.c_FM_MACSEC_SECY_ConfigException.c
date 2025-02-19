
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int exceptions; struct TYPE_3__* p_FmMacsecSecYDriverParam; } ;
typedef TYPE_1__ t_FmMacsecSecY ;
typedef int t_Error ;
typedef int e_FmMacsecSecYExceptions ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int GET_EXCEPTION_FLAG (int,int ) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error FM_MACSEC_SECY_ConfigException(t_Handle h_FmMacsecSecY, e_FmMacsecSecYExceptions exception, bool enable)
{
    t_FmMacsecSecY *p_FmMacsecSecY = (t_FmMacsecSecY *)h_FmMacsecSecY;
    uint32_t bitMask = 0;

    SANITY_CHECK_RETURN_ERROR(p_FmMacsecSecY, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmMacsecSecY->p_FmMacsecSecYDriverParam, E_INVALID_STATE);

    GET_EXCEPTION_FLAG(bitMask, exception);
    if (bitMask)
    {
        if (enable)
            p_FmMacsecSecY->exceptions |= bitMask;
        else
            p_FmMacsecSecY->exceptions &= ~bitMask;
    }
    else
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Undefined exception"));

    return E_OK;
}
