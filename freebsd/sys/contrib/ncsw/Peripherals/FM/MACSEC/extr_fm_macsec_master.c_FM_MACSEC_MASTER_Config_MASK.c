#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_2__* t_Handle ;
typedef  int /*<<< orphan*/  t_FmMacsecRegs ;
struct TYPE_11__ {int /*<<< orphan*/  h_App; int /*<<< orphan*/  f_Exception; int /*<<< orphan*/  baseAddr; int /*<<< orphan*/  h_FmMac; } ;
struct TYPE_13__ {TYPE_1__ nonGuestParams; int /*<<< orphan*/  h_Fm; } ;
typedef  TYPE_3__ t_FmMacsecParams ;
struct TYPE_12__ {int byPassMode; struct TYPE_12__* p_FmMacsecDriverParam; int /*<<< orphan*/  h_Fm; struct TYPE_12__* fmMacsecModuleName; int /*<<< orphan*/  h_FmMac; int /*<<< orphan*/  mflSubtract; int /*<<< orphan*/  sectagOverhead; int /*<<< orphan*/  pnExhThr; int /*<<< orphan*/  reservedSc0; int /*<<< orphan*/  keysUnreadable; int /*<<< orphan*/  untagTreatMode; int /*<<< orphan*/  encryptWithNoChangedTextDiscardUncontrolled; int /*<<< orphan*/  invalidTagsDeliverUncontrolled; int /*<<< orphan*/  unknownSciTreatMode; void* txScSpinLock; void* rxScSpinLock; int /*<<< orphan*/  events; int /*<<< orphan*/  exceptions; int /*<<< orphan*/  userExceptions; int /*<<< orphan*/  h_App; int /*<<< orphan*/  f_Exception; int /*<<< orphan*/ * p_FmMacsecRegs; int /*<<< orphan*/  fmMacsecControllerDriver; } ;
typedef  TYPE_2__ t_FmMacsecDriverParam ;
typedef  TYPE_2__ t_FmMacsec ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_encryptWithNoChangedTextFrameTreatment ; 
 int /*<<< orphan*/  DEFAULT_events ; 
 int /*<<< orphan*/  DEFAULT_exceptions ; 
 int /*<<< orphan*/  DEFAULT_invalidTagsFrameTreatment ; 
 int /*<<< orphan*/  DEFAULT_keysUnreadable ; 
 int /*<<< orphan*/  DEFAULT_mflSubtract ; 
 int /*<<< orphan*/  DEFAULT_normalMode ; 
 int /*<<< orphan*/  DEFAULT_pnExhThr ; 
 int /*<<< orphan*/  DEFAULT_sc0ReservedForPTP ; 
 int /*<<< orphan*/  DEFAULT_sectagOverhead ; 
 int /*<<< orphan*/  DEFAULT_unknownSciFrameTreatment ; 
 int /*<<< orphan*/  DEFAULT_untagFrameTreatment ; 
 int /*<<< orphan*/  DEFAULT_userExceptions ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAJOR ; 
 int MODULE_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 void* FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

t_Handle FUNC10(t_FmMacsecParams *p_FmMacsecParam)
{
    t_FmMacsec  *p_FmMacsec;
    uint32_t    macId;

    /* Allocate FM MACSEC structure */
    p_FmMacsec = (t_FmMacsec *) FUNC8(sizeof(t_FmMacsec));
    if (!p_FmMacsec)
    {
        FUNC3(MAJOR, E_NO_MEMORY, ("FM MACSEC driver structure"));
        return NULL;
    }
    FUNC9(p_FmMacsec, 0, sizeof(t_FmMacsec));
    FUNC2(&p_FmMacsec->fmMacsecControllerDriver);

    /* Allocate the FM MACSEC driver's parameters structure */
    p_FmMacsec->p_FmMacsecDriverParam = (t_FmMacsecDriverParam *)FUNC8(sizeof(t_FmMacsecDriverParam));
    if (!p_FmMacsec->p_FmMacsecDriverParam)
    {
        FUNC6(p_FmMacsec);
        FUNC3(MAJOR, E_NO_MEMORY, ("FM MACSEC driver parameters"));
        return NULL;
    }
    FUNC9(p_FmMacsec->p_FmMacsecDriverParam, 0, sizeof(t_FmMacsecDriverParam));

    /* Initialize FM MACSEC parameters which will be kept by the driver */
    p_FmMacsec->h_Fm            = p_FmMacsecParam->h_Fm;
    p_FmMacsec->h_FmMac         = p_FmMacsecParam->nonGuestParams.h_FmMac;
    p_FmMacsec->p_FmMacsecRegs  = (t_FmMacsecRegs *)FUNC5(p_FmMacsecParam->nonGuestParams.baseAddr);
    p_FmMacsec->f_Exception     = p_FmMacsecParam->nonGuestParams.f_Exception;
    p_FmMacsec->h_App           = p_FmMacsecParam->nonGuestParams.h_App;
    p_FmMacsec->userExceptions  = DEFAULT_userExceptions;
    p_FmMacsec->exceptions      = DEFAULT_exceptions;
    p_FmMacsec->events          = DEFAULT_events;
    p_FmMacsec->rxScSpinLock    = FUNC7();
    p_FmMacsec->txScSpinLock    = FUNC7();

    /* Initialize FM MACSEC driver parameters parameters (for initialization phase only) */
    p_FmMacsec->p_FmMacsecDriverParam->unknownSciTreatMode                           = DEFAULT_unknownSciFrameTreatment;
    p_FmMacsec->p_FmMacsecDriverParam->invalidTagsDeliverUncontrolled                = DEFAULT_invalidTagsFrameTreatment;
    p_FmMacsec->p_FmMacsecDriverParam->encryptWithNoChangedTextDiscardUncontrolled   = DEFAULT_encryptWithNoChangedTextFrameTreatment;
    p_FmMacsec->p_FmMacsecDriverParam->untagTreatMode                                = DEFAULT_untagFrameTreatment;
    p_FmMacsec->p_FmMacsecDriverParam->keysUnreadable                                = DEFAULT_keysUnreadable;
    p_FmMacsec->p_FmMacsecDriverParam->reservedSc0                                   = DEFAULT_sc0ReservedForPTP;
    p_FmMacsec->p_FmMacsecDriverParam->byPassMode                                    = !DEFAULT_normalMode;
    p_FmMacsec->p_FmMacsecDriverParam->pnExhThr                                      = DEFAULT_pnExhThr;
    p_FmMacsec->p_FmMacsecDriverParam->sectagOverhead                                = DEFAULT_sectagOverhead;
    p_FmMacsec->p_FmMacsecDriverParam->mflSubtract                                   = DEFAULT_mflSubtract;
    /* build the FM MACSEC master IPC address */
    FUNC9(p_FmMacsec->fmMacsecModuleName, 0, (sizeof(char))*MODULE_NAME_SIZE);
    FUNC0(p_FmMacsec->h_FmMac,&macId);
    if (FUNC4 (p_FmMacsec->fmMacsecModuleName, "FM-%d-MAC-%d-MACSEC-Master",
        FUNC1(p_FmMacsec->h_Fm),macId) != 24)
    {
        FUNC6(p_FmMacsec->p_FmMacsecDriverParam);
        FUNC6(p_FmMacsec);
        FUNC3(MAJOR, E_INVALID_STATE, ("Sprint failed"));
        return NULL;
    }
    return p_FmMacsec;
}