
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct memac_cfg {int h_App; int f_Event; int f_Exception; int exceptions; int macId; int enetMode; struct memac_mii_access_mem_map* p_MiiMemMap; struct memac_regs* p_MemMap; int addr; struct memac_cfg* p_MemacDriverParam; int fmMacControllerDriver; } ;
typedef struct memac_cfg t_Memac ;
typedef struct memac_cfg* t_Handle ;
struct TYPE_4__ {uintptr_t baseAddr; int h_App; int f_Event; int f_Exception; int macId; int enetMode; int addr; } ;
typedef TYPE_1__ t_FmMacParams ;
struct memac_regs {int dummy; } ;
struct memac_mii_access_mem_map {int dummy; } ;


 int ENET_ADDR_TO_UINT64 (int ) ;
 int E_NO_MEMORY ;
 int E_NULL_POINTER ;
 int InitFmMacControllerDriver (int *) ;
 int MAJOR ;
 uintptr_t MEMAC_TO_MII_OFFSET ;
 int MEMAC_default_exceptions ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_1__*,int ,int *) ;
 scalar_t__ UINT_TO_PTR (uintptr_t) ;
 int XX_Free (struct memac_cfg*) ;
 scalar_t__ XX_Malloc (int) ;
 int fman_memac_defconfig (struct memac_cfg*) ;
 int memset (struct memac_cfg*,int ,int) ;

t_Handle MEMAC_Config(t_FmMacParams *p_FmMacParam)
{
    t_Memac *p_Memac;
    struct memac_cfg *p_MemacDriverParam;
    uintptr_t baseAddr;

    SANITY_CHECK_RETURN_VALUE(p_FmMacParam, E_NULL_POINTER, ((void*)0));

    baseAddr = p_FmMacParam->baseAddr;

    p_Memac = (t_Memac *)XX_Malloc(sizeof(t_Memac));
    if (!p_Memac)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("mEMAC driver structure"));
        return ((void*)0);
    }
    memset(p_Memac, 0, sizeof(t_Memac));
    InitFmMacControllerDriver(&p_Memac->fmMacControllerDriver);


    p_MemacDriverParam = (struct memac_cfg *)XX_Malloc(sizeof(struct memac_cfg));
    if (!p_MemacDriverParam)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("mEMAC driver parameters"));
        XX_Free(p_Memac);
        return ((void*)0);
    }
    memset(p_MemacDriverParam, 0, sizeof(struct memac_cfg));


    p_Memac->p_MemacDriverParam = p_MemacDriverParam;

    fman_memac_defconfig(p_MemacDriverParam);

    p_Memac->addr = ENET_ADDR_TO_UINT64(p_FmMacParam->addr);

    p_Memac->p_MemMap = (struct memac_regs *)UINT_TO_PTR(baseAddr);
    p_Memac->p_MiiMemMap = (struct memac_mii_access_mem_map*)UINT_TO_PTR(baseAddr + MEMAC_TO_MII_OFFSET);

    p_Memac->enetMode = p_FmMacParam->enetMode;
    p_Memac->macId = p_FmMacParam->macId;
    p_Memac->exceptions = MEMAC_default_exceptions;
    p_Memac->f_Exception = p_FmMacParam->f_Exception;
    p_Memac->f_Event = p_FmMacParam->f_Event;
    p_Memac->h_App = p_FmMacParam->h_App;

    return p_Memac;
}
