
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_2__* t_Handle ;
typedef int t_FmMacsecRegs ;
struct TYPE_11__ {int h_App; int f_Exception; int baseAddr; int h_FmMac; } ;
struct TYPE_13__ {TYPE_1__ nonGuestParams; int h_Fm; } ;
typedef TYPE_3__ t_FmMacsecParams ;
struct TYPE_12__ {int byPassMode; struct TYPE_12__* p_FmMacsecDriverParam; int h_Fm; struct TYPE_12__* fmMacsecModuleName; int h_FmMac; int mflSubtract; int sectagOverhead; int pnExhThr; int reservedSc0; int keysUnreadable; int untagTreatMode; int encryptWithNoChangedTextDiscardUncontrolled; int invalidTagsDeliverUncontrolled; int unknownSciTreatMode; void* txScSpinLock; void* rxScSpinLock; int events; int exceptions; int userExceptions; int h_App; int f_Exception; int * p_FmMacsecRegs; int fmMacsecControllerDriver; } ;
typedef TYPE_2__ t_FmMacsecDriverParam ;
typedef TYPE_2__ t_FmMacsec ;


 int DEFAULT_encryptWithNoChangedTextFrameTreatment ;
 int DEFAULT_events ;
 int DEFAULT_exceptions ;
 int DEFAULT_invalidTagsFrameTreatment ;
 int DEFAULT_keysUnreadable ;
 int DEFAULT_mflSubtract ;
 int DEFAULT_normalMode ;
 int DEFAULT_pnExhThr ;
 int DEFAULT_sc0ReservedForPTP ;
 int DEFAULT_sectagOverhead ;
 int DEFAULT_unknownSciFrameTreatment ;
 int DEFAULT_untagFrameTreatment ;
 int DEFAULT_userExceptions ;
 int E_INVALID_STATE ;
 int E_NO_MEMORY ;
 int FM_MAC_GetId (int ,int *) ;
 int FmGetId (int ) ;
 int InitFmMacsecControllerDriver (int *) ;
 int MAJOR ;
 int MODULE_NAME_SIZE ;
 int REPORT_ERROR (int ,int ,char*) ;
 int Sprint (TYPE_2__*,char*,int ,int ) ;
 scalar_t__ UINT_TO_PTR (int ) ;
 int XX_Free (TYPE_2__*) ;
 void* XX_InitSpinlock () ;
 scalar_t__ XX_Malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;

t_Handle FM_MACSEC_MASTER_Config(t_FmMacsecParams *p_FmMacsecParam)
{
    t_FmMacsec *p_FmMacsec;
    uint32_t macId;


    p_FmMacsec = (t_FmMacsec *) XX_Malloc(sizeof(t_FmMacsec));
    if (!p_FmMacsec)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM MACSEC driver structure"));
        return ((void*)0);
    }
    memset(p_FmMacsec, 0, sizeof(t_FmMacsec));
    InitFmMacsecControllerDriver(&p_FmMacsec->fmMacsecControllerDriver);


    p_FmMacsec->p_FmMacsecDriverParam = (t_FmMacsecDriverParam *)XX_Malloc(sizeof(t_FmMacsecDriverParam));
    if (!p_FmMacsec->p_FmMacsecDriverParam)
    {
        XX_Free(p_FmMacsec);
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM MACSEC driver parameters"));
        return ((void*)0);
    }
    memset(p_FmMacsec->p_FmMacsecDriverParam, 0, sizeof(t_FmMacsecDriverParam));


    p_FmMacsec->h_Fm = p_FmMacsecParam->h_Fm;
    p_FmMacsec->h_FmMac = p_FmMacsecParam->nonGuestParams.h_FmMac;
    p_FmMacsec->p_FmMacsecRegs = (t_FmMacsecRegs *)UINT_TO_PTR(p_FmMacsecParam->nonGuestParams.baseAddr);
    p_FmMacsec->f_Exception = p_FmMacsecParam->nonGuestParams.f_Exception;
    p_FmMacsec->h_App = p_FmMacsecParam->nonGuestParams.h_App;
    p_FmMacsec->userExceptions = DEFAULT_userExceptions;
    p_FmMacsec->exceptions = DEFAULT_exceptions;
    p_FmMacsec->events = DEFAULT_events;
    p_FmMacsec->rxScSpinLock = XX_InitSpinlock();
    p_FmMacsec->txScSpinLock = XX_InitSpinlock();


    p_FmMacsec->p_FmMacsecDriverParam->unknownSciTreatMode = DEFAULT_unknownSciFrameTreatment;
    p_FmMacsec->p_FmMacsecDriverParam->invalidTagsDeliverUncontrolled = DEFAULT_invalidTagsFrameTreatment;
    p_FmMacsec->p_FmMacsecDriverParam->encryptWithNoChangedTextDiscardUncontrolled = DEFAULT_encryptWithNoChangedTextFrameTreatment;
    p_FmMacsec->p_FmMacsecDriverParam->untagTreatMode = DEFAULT_untagFrameTreatment;
    p_FmMacsec->p_FmMacsecDriverParam->keysUnreadable = DEFAULT_keysUnreadable;
    p_FmMacsec->p_FmMacsecDriverParam->reservedSc0 = DEFAULT_sc0ReservedForPTP;
    p_FmMacsec->p_FmMacsecDriverParam->byPassMode = !DEFAULT_normalMode;
    p_FmMacsec->p_FmMacsecDriverParam->pnExhThr = DEFAULT_pnExhThr;
    p_FmMacsec->p_FmMacsecDriverParam->sectagOverhead = DEFAULT_sectagOverhead;
    p_FmMacsec->p_FmMacsecDriverParam->mflSubtract = DEFAULT_mflSubtract;

    memset(p_FmMacsec->fmMacsecModuleName, 0, (sizeof(char))*MODULE_NAME_SIZE);
    FM_MAC_GetId(p_FmMacsec->h_FmMac,&macId);
    if (Sprint (p_FmMacsec->fmMacsecModuleName, "FM-%d-MAC-%d-MACSEC-Master",
        FmGetId(p_FmMacsec->h_Fm),macId) != 24)
    {
        XX_Free(p_FmMacsec->p_FmMacsecDriverParam);
        XX_Free(p_FmMacsec);
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("Sprint failed"));
        return ((void*)0);
    }
    return p_FmMacsec;
}
