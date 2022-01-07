
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_6__ {TYPE_2__* p_Code; } ;
struct TYPE_7__ {scalar_t__ guestId; scalar_t__* fmModuleName; scalar_t__ irq; scalar_t__ errIrq; struct TYPE_7__* p_FmStateStruct; int recoveryMode; struct TYPE_7__* p_FmDriverParam; TYPE_1__ firmware; scalar_t__ h_Spinlock; struct TYPE_7__* p_FmSp; int partNumOfVSPs; int partVSPBase; int p_FmDmaRegs; int p_FmFpmRegs; int p_FmQmiRegs; int p_FmBmiRegs; } ;
typedef TYPE_2__ t_Fm ;
typedef int t_Error ;
struct fman_rg {int dma_rg; int fpm_rg; int qmi_rg; int bmi_rg; } ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int FreeInitResources (TYPE_2__*) ;
 int FreeVSPsForPartition (scalar_t__,int ,int ,scalar_t__) ;
 scalar_t__ NCSW_MASTER_ID ;
 scalar_t__ NO_IRQ ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_2__*,int ) ;
 int XX_DisableIntr (scalar_t__) ;
 int XX_Free (TYPE_2__*) ;
 int XX_FreeIntr (scalar_t__) ;
 int XX_FreeSpinlock (scalar_t__) ;
 int XX_IpcUnregisterMsgHandler (scalar_t__*) ;
 int fman_free_resources (struct fman_rg*) ;

t_Error FM_Free(t_Handle h_Fm)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;
    struct fman_rg fman_rg;

    SANITY_CHECK_RETURN_ERROR(p_Fm, E_INVALID_HANDLE);

    fman_rg.bmi_rg = p_Fm->p_FmBmiRegs;
    fman_rg.qmi_rg = p_Fm->p_FmQmiRegs;
    fman_rg.fpm_rg = p_Fm->p_FmFpmRegs;
    fman_rg.dma_rg = p_Fm->p_FmDmaRegs;

    if (p_Fm->guestId != NCSW_MASTER_ID)
    {
        if (p_Fm->fmModuleName[0] != 0)
            XX_IpcUnregisterMsgHandler(p_Fm->fmModuleName);

        if (!p_Fm->recoveryMode)
            XX_Free(p_Fm->p_FmStateStruct);

        XX_Free(p_Fm);

        return E_OK;
    }

    fman_free_resources(&fman_rg);

    if ((p_Fm->guestId == NCSW_MASTER_ID) && (p_Fm->fmModuleName[0] != 0))
        XX_IpcUnregisterMsgHandler(p_Fm->fmModuleName);

    if (p_Fm->p_FmStateStruct)
    {
        if (p_Fm->p_FmStateStruct->irq != NO_IRQ)
        {
            XX_DisableIntr(p_Fm->p_FmStateStruct->irq);
            XX_FreeIntr(p_Fm->p_FmStateStruct->irq);
        }
        if (p_Fm->p_FmStateStruct->errIrq != NO_IRQ)
        {
            XX_DisableIntr(p_Fm->p_FmStateStruct->errIrq);
            XX_FreeIntr(p_Fm->p_FmStateStruct->errIrq);
        }
    }
    if (p_Fm->h_Spinlock)
        XX_FreeSpinlock(p_Fm->h_Spinlock);

    if (p_Fm->p_FmDriverParam)
    {
        if (p_Fm->firmware.p_Code)
            XX_Free(p_Fm->firmware.p_Code);
        XX_Free(p_Fm->p_FmDriverParam);
        p_Fm->p_FmDriverParam = ((void*)0);
    }

    FreeInitResources(p_Fm);

    if (!p_Fm->recoveryMode && p_Fm->p_FmStateStruct)
        XX_Free(p_Fm->p_FmStateStruct);

    XX_Free(p_Fm);

    return E_OK;
}
