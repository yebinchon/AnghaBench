
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int t_TgecMiiAccessMemMap ;
struct tgec_cfg {int h_App; int f_Event; int f_Exception; int mdioIrq; int exceptions; int macId; int enetMode; int addr; int * p_MiiMemMap; struct tgec_regs* p_MemMap; struct tgec_cfg* p_TgecDriverParam; int fmMacControllerDriver; } ;
typedef struct tgec_cfg t_Tgec ;
typedef struct tgec_cfg* t_Handle ;
struct TYPE_4__ {uintptr_t baseAddr; int h_App; int f_Event; int f_Exception; int mdioIrq; int macId; int enetMode; int addr; } ;
typedef TYPE_1__ t_FmMacParams ;
struct tgec_regs {int dummy; } ;


 int DEFAULT_exceptions ;
 int ENET_ADDR_TO_UINT64 (int ) ;
 int E_NO_MEMORY ;
 int E_NULL_POINTER ;
 int InitFmMacControllerDriver (int *) ;
 int MAJOR ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_1__*,int ,int *) ;
 uintptr_t TGEC_TO_MII_OFFSET ;
 scalar_t__ UINT_TO_PTR (uintptr_t) ;
 int XX_Free (struct tgec_cfg*) ;
 scalar_t__ XX_Malloc (int) ;
 int fman_tgec_defconfig (struct tgec_cfg*) ;
 int memset (struct tgec_cfg*,int ,int) ;

t_Handle TGEC_Config(t_FmMacParams *p_FmMacParam)
{
    t_Tgec *p_Tgec;
    struct tgec_cfg *p_TgecDriverParam;
    uintptr_t baseAddr;

    SANITY_CHECK_RETURN_VALUE(p_FmMacParam, E_NULL_POINTER, ((void*)0));

    baseAddr = p_FmMacParam->baseAddr;

    p_Tgec = (t_Tgec *)XX_Malloc(sizeof(t_Tgec));
    if (!p_Tgec)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("10G MAC driver structure"));
        return ((void*)0);
    }
    memset(p_Tgec, 0, sizeof(t_Tgec));
    InitFmMacControllerDriver(&p_Tgec->fmMacControllerDriver);


    p_TgecDriverParam = (struct tgec_cfg *) XX_Malloc(sizeof(struct tgec_cfg));
    if (!p_TgecDriverParam)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("10G MAC driver parameters"));
        XX_Free(p_Tgec);
        return ((void*)0);
    }
    memset(p_TgecDriverParam, 0, sizeof(struct tgec_cfg));


    p_Tgec->p_TgecDriverParam = p_TgecDriverParam;

    fman_tgec_defconfig(p_TgecDriverParam);

    p_Tgec->p_MemMap = (struct tgec_regs *)UINT_TO_PTR(baseAddr);
    p_Tgec->p_MiiMemMap = (t_TgecMiiAccessMemMap *)UINT_TO_PTR(baseAddr + TGEC_TO_MII_OFFSET);
    p_Tgec->addr = ENET_ADDR_TO_UINT64(p_FmMacParam->addr);
    p_Tgec->enetMode = p_FmMacParam->enetMode;
    p_Tgec->macId = p_FmMacParam->macId;
    p_Tgec->exceptions = DEFAULT_exceptions;
    p_Tgec->mdioIrq = p_FmMacParam->mdioIrq;
    p_Tgec->f_Exception = p_FmMacParam->f_Exception;
    p_Tgec->f_Event = p_FmMacParam->f_Event;
    p_Tgec->h_App = p_FmMacParam->h_App;

    return p_Tgec;
}
