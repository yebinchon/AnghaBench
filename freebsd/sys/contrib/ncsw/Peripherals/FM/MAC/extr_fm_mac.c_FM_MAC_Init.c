
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int (* f_FM_MAC_Init ) (scalar_t__) ;int macId; int enetMode; int h_Fm; int f_FM_MAC_ConfigResetOnInit; scalar_t__ resetOnInit; } ;
typedef TYPE_1__ t_FmMacControllerDriver ;
typedef int t_Error ;


 scalar_t__ ENET_INTERFACE_FROM_MODE (int ) ;
 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_NOT_SUPPORTED ;
 scalar_t__ E_OK ;
 scalar_t__ FmResetMac (int ,int ,int ) ;
 int MAJOR ;
 int MINOR ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 scalar_t__ e_ENET_IF_XGMII ;
 int e_FM_MAC_10G ;
 int e_FM_MAC_1G ;
 int stub1 (scalar_t__) ;

t_Error FM_MAC_Init (t_Handle h_FmMac)
{
    t_FmMacControllerDriver *p_FmMacControllerDriver = (t_FmMacControllerDriver *)h_FmMac;

    SANITY_CHECK_RETURN_ERROR(p_FmMacControllerDriver, E_INVALID_HANDLE);

    if (p_FmMacControllerDriver->resetOnInit &&
        !p_FmMacControllerDriver->f_FM_MAC_ConfigResetOnInit &&
        (FmResetMac(p_FmMacControllerDriver->h_Fm,
                    ((ENET_INTERFACE_FROM_MODE(p_FmMacControllerDriver->enetMode) == e_ENET_IF_XGMII) ?
                        e_FM_MAC_10G : e_FM_MAC_1G),
                    p_FmMacControllerDriver->macId) != E_OK))
        RETURN_ERROR(MAJOR, E_INVALID_STATE, ("Can't reset MAC!"));

    if (p_FmMacControllerDriver->f_FM_MAC_Init)
        return p_FmMacControllerDriver->f_FM_MAC_Init(h_FmMac);
    RETURN_ERROR(MINOR, E_NOT_SUPPORTED, NO_MSG);
}
