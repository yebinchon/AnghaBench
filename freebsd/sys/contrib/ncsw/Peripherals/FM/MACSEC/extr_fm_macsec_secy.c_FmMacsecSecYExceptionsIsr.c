
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int exceptions; int h_App; int (* f_Exception ) (int ,int ) ;} ;
typedef TYPE_1__ t_FmMacsecSecY ;


 int E_INVALID_HANDLE ;
 int FM_MACSEC_SECY_EX_FRAME_DISCARDED ;
 int SANITY_CHECK_RETURN (TYPE_1__*,int ) ;
 int UNUSED (int ) ;
 int e_FM_MACSEC_SECY_EX_FRAME_DISCARDED ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void FmMacsecSecYExceptionsIsr(t_Handle h_FmMacsecSecY, uint32_t id)
{
    t_FmMacsecSecY *p_FmMacsecSecY = (t_FmMacsecSecY *)h_FmMacsecSecY;

    UNUSED(id);
    SANITY_CHECK_RETURN(p_FmMacsecSecY, E_INVALID_HANDLE);

    if (p_FmMacsecSecY->exceptions & FM_MACSEC_SECY_EX_FRAME_DISCARDED)
        p_FmMacsecSecY->f_Exception(p_FmMacsecSecY->h_App, e_FM_MACSEC_SECY_EX_FRAME_DISCARDED);
}
