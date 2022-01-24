#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* t_Handle ;
typedef  int /*<<< orphan*/  t_BmRegs ;
struct TYPE_12__ {int guestId; int /*<<< orphan*/  liodn; int /*<<< orphan*/  fbprMemPartitionId; int /*<<< orphan*/  totalNumOfBuffers; int /*<<< orphan*/  errIrq; int /*<<< orphan*/  h_App; int /*<<< orphan*/  f_Exception; int /*<<< orphan*/  baseAddress; int /*<<< orphan*/  partBpidBase; int /*<<< orphan*/  partNumOfPools; } ;
typedef  TYPE_2__ t_BmParam ;
struct TYPE_11__ {int guestId; struct TYPE_11__* p_BmDriverParams; struct TYPE_11__* moduleName; int /*<<< orphan*/  liodn; int /*<<< orphan*/  fbprThreshold; int /*<<< orphan*/  fbprMemPartitionId; int /*<<< orphan*/  totalNumOfBuffers; int /*<<< orphan*/  errIrq; int /*<<< orphan*/  h_App; int /*<<< orphan*/  f_Exception; int /*<<< orphan*/  exceptions; int /*<<< orphan*/ * p_BmRegs; int /*<<< orphan*/  partBpidBase; int /*<<< orphan*/  partNumOfPools; } ;
typedef  TYPE_1__ t_BmDriverParams ;
typedef  TYPE_1__ t_Bm ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_exceptions ; 
 int /*<<< orphan*/  DEFAULT_fbprThreshold ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  MAJOR ; 
 int MODULE_NAME_SIZE ; 
 int NCSW_MASTER_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

t_Handle FUNC7(t_BmParam *p_BmParam)
{
    t_Bm        *p_Bm;

    FUNC1(p_BmParam, E_INVALID_HANDLE, NULL);

    p_Bm = (t_Bm *)FUNC5(sizeof(t_Bm));
    if (!p_Bm)
    {
        FUNC0(MAJOR, E_NO_MEMORY, ("BM obj!!!"));
        return NULL;
    }
    FUNC6(p_Bm, 0, sizeof(t_Bm));

    p_Bm->p_BmDriverParams = (t_BmDriverParams *)FUNC5(sizeof(t_BmDriverParams));
    if (!p_Bm->p_BmDriverParams)
    {
        FUNC4(p_Bm);
        FUNC0(MAJOR, E_NO_MEMORY, ("Bm driver parameters"));
        return NULL;
    }
    FUNC6(p_Bm->p_BmDriverParams, 0, sizeof(t_BmDriverParams));

    p_Bm->guestId                               = p_BmParam->guestId;
    p_Bm->p_BmDriverParams->partNumOfPools      = p_BmParam->partNumOfPools;
    p_Bm->p_BmDriverParams->partBpidBase        = p_BmParam->partBpidBase;
    p_Bm->p_BmRegs                              = (t_BmRegs *)FUNC3(p_BmParam->baseAddress);

    if (p_Bm->guestId == NCSW_MASTER_ID)
    {
        p_Bm->exceptions                            = DEFAULT_exceptions;
        p_Bm->f_Exception                           = p_BmParam->f_Exception;
        p_Bm->h_App                                 = p_BmParam->h_App;
        p_Bm->errIrq                                = p_BmParam->errIrq;
        p_Bm->p_BmDriverParams->totalNumOfBuffers   = p_BmParam->totalNumOfBuffers;
        p_Bm->p_BmDriverParams->fbprMemPartitionId  = p_BmParam->fbprMemPartitionId;
        p_Bm->p_BmDriverParams->fbprThreshold       = DEFAULT_fbprThreshold;
        p_Bm->p_BmDriverParams->liodn               = p_BmParam->liodn;

    }
    /* build the BM partition IPC address */
    FUNC6(p_Bm->moduleName, 0, MODULE_NAME_SIZE);
    if(FUNC2 (p_Bm->moduleName, "BM_0_%d",p_Bm->guestId) != (p_Bm->guestId<10 ? 6:7))
    {
        FUNC4(p_Bm->p_BmDriverParams);
        FUNC4(p_Bm);
        FUNC0(MAJOR, E_INVALID_STATE, ("Sprint failed"));
        return NULL;
    }
    return p_Bm;
}