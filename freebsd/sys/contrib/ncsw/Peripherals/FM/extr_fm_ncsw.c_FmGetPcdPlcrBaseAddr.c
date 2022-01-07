
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {uintptr_t baseAddr; } ;
typedef TYPE_1__ t_Fm ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 uintptr_t FM_MM_PLCR ;
 int MAJOR ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_1__*,int ,int ) ;

uintptr_t FmGetPcdPlcrBaseAddr(t_Handle h_Fm)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;

    SANITY_CHECK_RETURN_VALUE(p_Fm, E_INVALID_HANDLE, 0);

    if (!p_Fm->baseAddr)
    {
        REPORT_ERROR(MAJOR, E_INVALID_STATE,
                     ("No base-addr; probably Guest with IPC!"));
        return 0;
    }

    return (p_Fm->baseAddr + FM_MM_PLCR);
}
