
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef struct dtsec_cfg* t_Handle ;
struct TYPE_4__ {uintptr_t baseAddr; int h_App; int f_Event; int f_Exception; int mdioIrq; int macId; int enetMode; int addr; } ;
typedef TYPE_1__ t_FmMacParams ;
struct dtsec_cfg {int tbi_phy_addr; struct dtsec_cfg* p_DtsecDriverParam; int ptp_exception_en; int enTsuErrExeption; int ptp_tsu_en; int ptpTsuEnabled; int h_App; int f_Event; int f_Exception; int mdioIrq; int exceptions; int macId; int enetMode; int addr; struct dtsec_mii_reg* p_MiiMemMap; struct dtsec_regs* p_MemMap; int fmMacControllerDriver; } ;
typedef struct dtsec_cfg t_Dtsec ;
struct dtsec_regs {int dummy; } ;
struct dtsec_mii_reg {int dummy; } ;


 int DEFAULT_exceptions ;
 uintptr_t DTSEC_TO_MII_OFFSET ;
 int ENET_ADDR_TO_UINT64 (int ) ;
 int E_NO_MEMORY ;
 int E_NULL_POINTER ;
 int InitFmMacControllerDriver (int *) ;
 int MAJOR ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_1__*,int ,int *) ;
 scalar_t__ UINT_TO_PTR (uintptr_t) ;
 int XX_Free (struct dtsec_cfg*) ;
 scalar_t__ XX_Malloc (int) ;
 int fman_dtsec_defconfig (struct dtsec_cfg*) ;
 int memset (struct dtsec_cfg*,int ,int) ;

t_Handle DTSEC_Config(t_FmMacParams *p_FmMacParam)
{
    t_Dtsec *p_Dtsec;
    struct dtsec_cfg *p_DtsecDriverParam;
    uintptr_t baseAddr;

    SANITY_CHECK_RETURN_VALUE(p_FmMacParam, E_NULL_POINTER, ((void*)0));

    baseAddr = p_FmMacParam->baseAddr;


    p_Dtsec = (t_Dtsec *)XX_Malloc(sizeof(t_Dtsec));
    if (!p_Dtsec)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("dTSEC driver structure"));
        return ((void*)0);
    }
    memset(p_Dtsec, 0, sizeof(t_Dtsec));
    InitFmMacControllerDriver(&p_Dtsec->fmMacControllerDriver);


    p_DtsecDriverParam = (struct dtsec_cfg *) XX_Malloc(sizeof(struct dtsec_cfg));
    if (!p_DtsecDriverParam)
    {
        XX_Free(p_Dtsec);
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("dTSEC driver parameters"));
        return ((void*)0);
    }
    memset(p_DtsecDriverParam, 0, sizeof(struct dtsec_cfg));


    p_Dtsec->p_DtsecDriverParam = p_DtsecDriverParam;

    fman_dtsec_defconfig(p_DtsecDriverParam);

    p_Dtsec->p_MemMap = (struct dtsec_regs *)UINT_TO_PTR(baseAddr);
    p_Dtsec->p_MiiMemMap = (struct dtsec_mii_reg *)UINT_TO_PTR(baseAddr + DTSEC_TO_MII_OFFSET);
    p_Dtsec->addr = ENET_ADDR_TO_UINT64(p_FmMacParam->addr);
    p_Dtsec->enetMode = p_FmMacParam->enetMode;
    p_Dtsec->macId = p_FmMacParam->macId;
    p_Dtsec->exceptions = DEFAULT_exceptions;
    p_Dtsec->mdioIrq = p_FmMacParam->mdioIrq;
    p_Dtsec->f_Exception = p_FmMacParam->f_Exception;
    p_Dtsec->f_Event = p_FmMacParam->f_Event;
    p_Dtsec->h_App = p_FmMacParam->h_App;
    p_Dtsec->ptpTsuEnabled = p_Dtsec->p_DtsecDriverParam->ptp_tsu_en;
    p_Dtsec->enTsuErrExeption = p_Dtsec->p_DtsecDriverParam->ptp_exception_en;
    p_Dtsec->tbi_phy_addr = p_Dtsec->p_DtsecDriverParam->tbi_phy_addr;

    return p_Dtsec;
}
