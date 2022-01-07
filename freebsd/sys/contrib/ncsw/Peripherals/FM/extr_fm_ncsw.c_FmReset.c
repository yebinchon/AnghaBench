
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_5__ {TYPE_1__* p_FmFpmRegs; } ;
typedef TYPE_2__ t_Fm ;
typedef int t_Error ;
struct TYPE_4__ {int fm_rstc; } ;


 int CORE_MemoryBarrier () ;
 int E_INVALID_HANDLE ;
 int E_OK ;
 int FPM_RSTC_FM_RESET ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_2__*,int ) ;
 int WRITE_UINT32 (int ,int ) ;
 int XX_UDelay (int) ;

t_Error FmReset(t_Handle h_Fm)
{
 t_Fm *p_Fm = (t_Fm*)h_Fm;

    SANITY_CHECK_RETURN_ERROR(p_Fm, E_INVALID_HANDLE);

    WRITE_UINT32(p_Fm->p_FmFpmRegs->fm_rstc, FPM_RSTC_FM_RESET);
    CORE_MemoryBarrier();
    XX_UDelay(100);

    return E_OK;
}
