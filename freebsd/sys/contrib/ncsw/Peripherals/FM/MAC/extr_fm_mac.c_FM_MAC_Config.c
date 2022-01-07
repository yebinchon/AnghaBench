
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int * t_Handle ;
struct TYPE_8__ {int macId; int enetMode; int h_Fm; } ;
typedef TYPE_1__ t_FmMacParams ;
struct TYPE_9__ {scalar_t__ clkFreq; int resetOnInit; int macId; int enetMode; int h_Fm; } ;
typedef TYPE_2__ t_FmMacControllerDriver ;


 int DEFAULT_resetOnInit ;
 scalar_t__ DTSEC_Config (TYPE_1__*) ;
 scalar_t__ ENET_SPEED_FROM_MODE (int ) ;
 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 scalar_t__ FmGetClockFreq (int ) ;
 int MAJOR ;
 scalar_t__ MEMAC_Config (TYPE_1__*) ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_1__*,int ,int *) ;
 scalar_t__ TGEC_Config (TYPE_1__*) ;
 scalar_t__ e_ENET_SPEED_10000 ;

t_Handle FM_MAC_Config (t_FmMacParams *p_FmMacParam)
{
    t_FmMacControllerDriver *p_FmMacControllerDriver;
    uint16_t fmClkFreq;

    SANITY_CHECK_RETURN_VALUE(p_FmMacParam, E_INVALID_HANDLE, ((void*)0));

    fmClkFreq = FmGetClockFreq(p_FmMacParam->h_Fm);
    if (fmClkFreq == 0)
    {
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("Can't get clock for MAC!"));
        return ((void*)0);
    }
    p_FmMacControllerDriver = (t_FmMacControllerDriver *)MEMAC_Config(p_FmMacParam);


    if (!p_FmMacControllerDriver)
        return ((void*)0);

    p_FmMacControllerDriver->h_Fm = p_FmMacParam->h_Fm;
    p_FmMacControllerDriver->enetMode = p_FmMacParam->enetMode;
    p_FmMacControllerDriver->macId = p_FmMacParam->macId;
    p_FmMacControllerDriver->resetOnInit = DEFAULT_resetOnInit;

    p_FmMacControllerDriver->clkFreq = fmClkFreq;

    return (t_Handle)p_FmMacControllerDriver;
}
