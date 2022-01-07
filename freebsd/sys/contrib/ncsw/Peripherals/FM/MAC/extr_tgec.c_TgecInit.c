
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int majorRev; } ;
struct TYPE_3__ {struct tgec_cfg* h_Fm; TYPE_2__ fmRevInfo; int macId; } ;
struct tgec_cfg {int exceptions; scalar_t__ mdioIrq; struct tgec_cfg* p_TgecDriverParam; int macId; TYPE_1__ fmMacControllerDriver; void* p_UnicastAddrHash; void* p_MulticastAddrHash; int p_MemMap; int max_frame_length; int skip_fman11_workaround; int addr; } ;
typedef struct tgec_cfg t_Tgec ;
typedef scalar_t__ t_Handle ;
typedef scalar_t__ t_Error ;
typedef scalar_t__ t_EnetAddr ;


 void* AllocHashTable (int ) ;
 int CHECK_INIT_PARAMETERS (struct tgec_cfg*,int ) ;
 int CheckInitParameters ;
 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 scalar_t__ E_NO_MEMORY ;
 scalar_t__ E_OK ;
 int FM_GetRevision (struct tgec_cfg*,TYPE_2__*) ;
 int FmRegisterIntr (struct tgec_cfg*,int ,int ,int ,int ,struct tgec_cfg*) ;
 scalar_t__ FmSetMacMaxFrame (struct tgec_cfg*,int ,int ,int ) ;
 int FreeInitResources (struct tgec_cfg*) ;
 int HASH_TABLE_SIZE ;
 int MAJOR ;
 int MAKE_ENET_ADDR_FROM_UINT64 (int ,scalar_t__) ;
 int MINOR ;
 scalar_t__ NO_IRQ ;
 char* NO_MSG ;
 int REPORT_ERROR (int ,scalar_t__,char*) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_ERROR (struct tgec_cfg*,int ) ;
 int TGEC_IMASK_LOC_FAULT ;
 int TGEC_IMASK_REM_FAULT ;
 int TgecErrException ;
 int TgecException ;
 scalar_t__ TgecTxEccWorkaround (struct tgec_cfg*) ;
 int XX_EnableIntr (scalar_t__) ;
 int XX_Free (struct tgec_cfg*) ;
 int XX_SetIntr (scalar_t__,int ,struct tgec_cfg*) ;
 int e_FM_INTR_TYPE_ERR ;
 int e_FM_MAC_10G ;
 int e_FM_MOD_10G_MAC ;
 scalar_t__ fman_tgec_init (int ,struct tgec_cfg*,int) ;
 int fman_tgec_set_erratum_tx_fifo_corruption_10gmac_a007 (int ) ;
 int fman_tgec_set_mac_address (int ,int *) ;

__attribute__((used)) static t_Error TgecInit(t_Handle h_Tgec)
{
    t_Tgec *p_Tgec = (t_Tgec *)h_Tgec;
    struct tgec_cfg *p_TgecDriverParam;
    t_EnetAddr ethAddr;
    t_Error err;

    SANITY_CHECK_RETURN_ERROR(p_Tgec, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_Tgec->p_TgecDriverParam, E_INVALID_STATE);
    SANITY_CHECK_RETURN_ERROR(p_Tgec->fmMacControllerDriver.h_Fm, E_INVALID_HANDLE);

    FM_GetRevision(p_Tgec->fmMacControllerDriver.h_Fm, &p_Tgec->fmMacControllerDriver.fmRevInfo);
    CHECK_INIT_PARAMETERS(p_Tgec, CheckInitParameters);

    p_TgecDriverParam = p_Tgec->p_TgecDriverParam;

    MAKE_ENET_ADDR_FROM_UINT64(p_Tgec->addr, ethAddr);
    fman_tgec_set_mac_address(p_Tgec->p_MemMap, (uint8_t *)ethAddr);
    err = fman_tgec_init(p_Tgec->p_MemMap, p_TgecDriverParam, p_Tgec->exceptions);
    if (err)
    {
        FreeInitResources(p_Tgec);
        RETURN_ERROR(MAJOR, err, ("This TGEC version does not support the required i/f mode"));
    }


    err = FmSetMacMaxFrame(p_Tgec->fmMacControllerDriver.h_Fm,
                           e_FM_MAC_10G,
                           p_Tgec->fmMacControllerDriver.macId,
                           p_TgecDriverParam->max_frame_length);
    if (err != E_OK)
    {
        FreeInitResources(p_Tgec);
        RETURN_ERROR(MINOR, err, NO_MSG);
    }







    p_Tgec->p_MulticastAddrHash = AllocHashTable(HASH_TABLE_SIZE);
    if (!p_Tgec->p_MulticastAddrHash)
    {
        FreeInitResources(p_Tgec);
        RETURN_ERROR(MAJOR, E_NO_MEMORY, ("allocation hash table is FAILED"));
    }

    p_Tgec->p_UnicastAddrHash = AllocHashTable(HASH_TABLE_SIZE);
    if (!p_Tgec->p_UnicastAddrHash)
    {
        FreeInitResources(p_Tgec);
        RETURN_ERROR(MAJOR, E_NO_MEMORY, ("allocation hash table is FAILED"));
    }

    FmRegisterIntr(p_Tgec->fmMacControllerDriver.h_Fm,
                   e_FM_MOD_10G_MAC,
                   p_Tgec->macId,
                   e_FM_INTR_TYPE_ERR,
                   TgecErrException,
                   p_Tgec);
    if (p_Tgec->mdioIrq != NO_IRQ)
    {
        XX_SetIntr(p_Tgec->mdioIrq, TgecException, p_Tgec);
        XX_EnableIntr(p_Tgec->mdioIrq);
    }

    XX_Free(p_TgecDriverParam);
    p_Tgec->p_TgecDriverParam = ((void*)0);

    return E_OK;
}
