
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_9__ {int majorRev; int minorRev; } ;
struct TYPE_7__ {struct memac_cfg* h_Fm; int macId; TYPE_6__ fmRevInfo; } ;
struct memac_cfg {int macId; struct memac_cfg* p_MemacDriverParam; TYPE_1__ fmMacControllerDriver; void* p_UnicastAddrHash; void* p_MulticastAddrHash; int max_frame_length; TYPE_2__* p_MemMap; int exceptions; int enetMode; int addr; scalar_t__ reset_on_init; } ;
typedef struct memac_cfg t_Memac ;
typedef scalar_t__ t_Handle ;
typedef scalar_t__ t_Error ;
typedef scalar_t__ t_EnetAddr ;
typedef enum enet_speed { ____Placeholder_enet_speed } enet_speed ;
typedef enum enet_interface { ____Placeholder_enet_interface } enet_interface ;
typedef scalar_t__ e_FmMacType ;
struct TYPE_8__ {int command_config; } ;


 void* AllocHashTable (int ) ;
 int CHECK_INIT_PARAMETERS (struct memac_cfg*,int ) ;
 int CMD_CFG_CRC_FWD ;
 int CheckInitParameters ;
 scalar_t__ ENET_INTERFACE_FROM_MODE (int ) ;
 scalar_t__ ENET_SPEED_FROM_MODE (int ) ;
 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 scalar_t__ E_NO_MEMORY ;
 scalar_t__ E_OK ;
 int FALSE ;
 int FM_GetRevision (struct memac_cfg*,TYPE_6__*) ;
 int FmRegisterIntr (struct memac_cfg*,int ,int,int ,int ,struct memac_cfg*) ;
 scalar_t__ FmSetMacMaxFrame (struct memac_cfg*,scalar_t__,int ,int ) ;
 int FreeInitResources (struct memac_cfg*) ;
 int GET_UINT32 (int ) ;
 int HASH_TABLE_SIZE ;
 int MAJOR ;
 int MAKE_ENET_ADDR_FROM_UINT64 (int ,scalar_t__) ;
 int MemacErrException ;
 int MemacException ;
 int MemacInitInternalPhy (scalar_t__) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_ERROR (struct memac_cfg*,int ) ;
 int TRUE ;
 int WRITE_UINT32 (int ,int ) ;
 int XX_Free (struct memac_cfg*) ;
 scalar_t__ e_ENET_SPEED_10000 ;
 int e_FM_INTR_TYPE_ERR ;
 int e_FM_INTR_TYPE_NORMAL ;
 scalar_t__ e_FM_MAC_10G ;
 scalar_t__ e_FM_MAC_1G ;
 int e_FM_MOD_10G_MAC ;
 int e_FM_MOD_1G_MAC ;
 int fman_memac_add_addr_in_paddr (TYPE_2__*,int *,int ) ;
 int fman_memac_init (TYPE_2__*,struct memac_cfg*,int,int,int,int ) ;
 int fman_memac_reset (TYPE_2__*) ;
 TYPE_2__* g_MemacRegs ;

__attribute__((used)) static t_Error MemacInit(t_Handle h_Memac)
{
    t_Memac *p_Memac = (t_Memac *)h_Memac;
    struct memac_cfg *p_MemacDriverParam;
    enum enet_interface enet_interface;
    enum enet_speed enet_speed;
    t_EnetAddr ethAddr;
    e_FmMacType portType;
    t_Error err;
    bool slow_10g_if = FALSE;
    if (p_Memac->macId == 3)
  g_MemacRegs = p_Memac->p_MemMap;

    SANITY_CHECK_RETURN_ERROR(p_Memac, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_Memac->p_MemacDriverParam, E_INVALID_STATE);
    SANITY_CHECK_RETURN_ERROR(p_Memac->fmMacControllerDriver.h_Fm, E_INVALID_HANDLE);

    FM_GetRevision(p_Memac->fmMacControllerDriver.h_Fm, &p_Memac->fmMacControllerDriver.fmRevInfo);
    if (p_Memac->fmMacControllerDriver.fmRevInfo.majorRev == 6 &&
        p_Memac->fmMacControllerDriver.fmRevInfo.minorRev == 4)
        slow_10g_if = TRUE;

    CHECK_INIT_PARAMETERS(p_Memac, CheckInitParameters);

    p_MemacDriverParam = p_Memac->p_MemacDriverParam;

    portType =
        ((ENET_SPEED_FROM_MODE(p_Memac->enetMode) < e_ENET_SPEED_10000) ? e_FM_MAC_1G : e_FM_MAC_10G);


    if (p_MemacDriverParam->reset_on_init)
        fman_memac_reset(p_Memac->p_MemMap);


    MAKE_ENET_ADDR_FROM_UINT64(p_Memac->addr, ethAddr);
    fman_memac_add_addr_in_paddr(p_Memac->p_MemMap, (uint8_t*)ethAddr, 0);

    enet_interface = (enum enet_interface) ENET_INTERFACE_FROM_MODE(p_Memac->enetMode);
    enet_speed = (enum enet_speed) ENET_SPEED_FROM_MODE(p_Memac->enetMode);

    fman_memac_init(p_Memac->p_MemMap,
               p_Memac->p_MemacDriverParam,
               enet_interface,
               enet_speed,
               slow_10g_if,
               p_Memac->exceptions);
    MemacInitInternalPhy(h_Memac);


    err = FmSetMacMaxFrame(p_Memac->fmMacControllerDriver.h_Fm,
                           portType,
                           p_Memac->fmMacControllerDriver.macId,
                           p_MemacDriverParam->max_frame_length);
    if (err)
        RETURN_ERROR(MAJOR, err, ("settings Mac max frame length is FAILED"));

    p_Memac->p_MulticastAddrHash = AllocHashTable(HASH_TABLE_SIZE);
    if (!p_Memac->p_MulticastAddrHash)
    {
        FreeInitResources(p_Memac);
        RETURN_ERROR(MAJOR, E_NO_MEMORY, ("allocation hash table is FAILED"));
    }

    p_Memac->p_UnicastAddrHash = AllocHashTable(HASH_TABLE_SIZE);
    if (!p_Memac->p_UnicastAddrHash)
    {
        FreeInitResources(p_Memac);
        RETURN_ERROR(MAJOR, E_NO_MEMORY, ("allocation hash table is FAILED"));
    }

    FmRegisterIntr(p_Memac->fmMacControllerDriver.h_Fm,
                   (portType == e_FM_MAC_10G) ? e_FM_MOD_10G_MAC : e_FM_MOD_1G_MAC,
                   p_Memac->macId,
                   e_FM_INTR_TYPE_ERR,
                   MemacErrException,
                   p_Memac);

    FmRegisterIntr(p_Memac->fmMacControllerDriver.h_Fm,
                   (portType == e_FM_MAC_10G) ? e_FM_MOD_10G_MAC : e_FM_MOD_1G_MAC,
                   p_Memac->macId,
                   e_FM_INTR_TYPE_NORMAL,
                   MemacException,
                   p_Memac);

    XX_Free(p_MemacDriverParam);
    p_Memac->p_MemacDriverParam = ((void*)0);

    return E_OK;
}
