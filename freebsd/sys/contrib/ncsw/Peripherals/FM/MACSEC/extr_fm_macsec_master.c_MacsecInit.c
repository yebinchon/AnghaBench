
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_11__ {size_t changedTextWithNoEncryptDeliverUncontrolled; size_t onlyScbIsSetDeliverUncontrolled; size_t unknownSciTreatMode; size_t invalidTagsDeliverUncontrolled; size_t encryptWithNoChangedTextDiscardUncontrolled; size_t untagTreatMode; size_t keysUnreadable; size_t reservedSc0; size_t byPassMode; size_t pnExhThr; size_t exceptions; int h_Fm; int h_FmMac; struct TYPE_11__* p_FmMacsecDriverParam; int numTxScAvailable; int numRxScAvailable; TYPE_2__* p_FmMacsecRegs; int userExceptions; scalar_t__ mflSubtract; TYPE_1__* intrMng; } ;
typedef TYPE_3__ t_FmMacsecDriverParam ;
typedef TYPE_3__ t_FmMacsec ;
typedef int t_Error ;
struct TYPE_10__ {int erer; int tpnet; int mfl; int cfg; } ;
struct TYPE_9__ {int f_Isr; } ;


 size_t CFG_BYPN_SHIFT ;
 size_t CFG_ESCBT_SHIFT ;
 size_t CFG_ITT_SHIFT ;
 size_t CFG_KFT_SHIFT ;
 size_t CFG_KSS_SHIFT ;
 size_t CFG_S0I_SHIFT ;
 size_t CFG_UECT_SHIFT ;
 size_t CFG_UFT_SHIFT ;
 size_t CFG_USFT_SHIFT ;
 int CHECK_INIT_PARAMETERS (TYPE_3__*,int ) ;
 int CheckFmMacsecParameters ;
 int E_INVALID_HANDLE ;
 int E_OK ;
 size_t FM_MACSEC_EX_ECC ;
 int FM_MAC_GetId (int ,size_t*) ;
 size_t FM_MAC_GetMaxFrameLength (int ) ;
 int FmRegisterIntr (int ,int ,int ,int ,int ,TYPE_3__*) ;
 int MacsecErrorIsr ;
 int MacsecEventIsr ;
 int NUM_OF_RX_SC ;
 int NUM_OF_TX_SC ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_3__*,int ) ;
 int UnimplementedIsr ;
 int WRITE_UINT32 (int ,size_t) ;
 int XX_Free (TYPE_3__*) ;
 int e_FM_INTR_TYPE_ERR ;
 int e_FM_INTR_TYPE_NORMAL ;
 size_t e_FM_MACSEC_EV_DUMMY_LAST ;
 int e_FM_MOD_MACSEC ;

__attribute__((used)) static t_Error MacsecInit(t_Handle h_FmMacsec)
{
    t_FmMacsec *p_FmMacsec = (t_FmMacsec*)h_FmMacsec;
    t_FmMacsecDriverParam *p_FmMacsecDriverParam = ((void*)0);
    uint32_t tmpReg,i,macId;

    SANITY_CHECK_RETURN_ERROR(p_FmMacsec, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmMacsec->p_FmMacsecDriverParam, E_INVALID_HANDLE);

    CHECK_INIT_PARAMETERS(p_FmMacsec, CheckFmMacsecParameters);

    p_FmMacsecDriverParam = p_FmMacsec->p_FmMacsecDriverParam;

    for (i=0;i<e_FM_MACSEC_EV_DUMMY_LAST;i++)
        p_FmMacsec->intrMng[i].f_Isr = UnimplementedIsr;

    tmpReg = 0;
    tmpReg |= (p_FmMacsecDriverParam->changedTextWithNoEncryptDeliverUncontrolled << CFG_UECT_SHIFT)|
              (p_FmMacsecDriverParam->onlyScbIsSetDeliverUncontrolled << CFG_ESCBT_SHIFT) |
              (p_FmMacsecDriverParam->unknownSciTreatMode << CFG_USFT_SHIFT) |
              (p_FmMacsecDriverParam->invalidTagsDeliverUncontrolled << CFG_ITT_SHIFT) |
              (p_FmMacsecDriverParam->encryptWithNoChangedTextDiscardUncontrolled << CFG_KFT_SHIFT) |
              (p_FmMacsecDriverParam->untagTreatMode << CFG_UFT_SHIFT) |
              (p_FmMacsecDriverParam->keysUnreadable << CFG_KSS_SHIFT) |
              (p_FmMacsecDriverParam->reservedSc0 << CFG_S0I_SHIFT) |
              (p_FmMacsecDriverParam->byPassMode << CFG_BYPN_SHIFT);
    WRITE_UINT32(p_FmMacsec->p_FmMacsecRegs->cfg, tmpReg);

    tmpReg = FM_MAC_GetMaxFrameLength(p_FmMacsec->h_FmMac);


    tmpReg -= p_FmMacsecDriverParam->mflSubtract;
    WRITE_UINT32(p_FmMacsec->p_FmMacsecRegs->mfl, tmpReg);

    WRITE_UINT32(p_FmMacsec->p_FmMacsecRegs->tpnet, p_FmMacsecDriverParam->pnExhThr);

    if (!p_FmMacsec->userExceptions)
        p_FmMacsec->exceptions &= ~FM_MACSEC_EX_ECC;
    WRITE_UINT32(p_FmMacsec->p_FmMacsecRegs->erer, p_FmMacsec->exceptions);

    p_FmMacsec->numRxScAvailable = NUM_OF_RX_SC;
    if (p_FmMacsecDriverParam->reservedSc0)
        p_FmMacsec->numRxScAvailable --;
    p_FmMacsec->numTxScAvailable = NUM_OF_TX_SC;

    XX_Free(p_FmMacsecDriverParam);
    p_FmMacsec->p_FmMacsecDriverParam = ((void*)0);

    FM_MAC_GetId(p_FmMacsec->h_FmMac, &macId);
    FmRegisterIntr(p_FmMacsec->h_Fm,
                   e_FM_MOD_MACSEC,
                   (uint8_t)macId,
                   e_FM_INTR_TYPE_NORMAL,
                   MacsecEventIsr,
                   p_FmMacsec);

    FmRegisterIntr(p_FmMacsec->h_Fm,
                   e_FM_MOD_MACSEC,
                   0,
                   e_FM_INTR_TYPE_ERR,
                   MacsecErrorIsr,
                   p_FmMacsec);

    return E_OK;
}
