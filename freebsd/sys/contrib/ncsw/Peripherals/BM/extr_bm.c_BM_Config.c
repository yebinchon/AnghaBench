
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* t_Handle ;
typedef int t_BmRegs ;
struct TYPE_12__ {int guestId; int liodn; int fbprMemPartitionId; int totalNumOfBuffers; int errIrq; int h_App; int f_Exception; int baseAddress; int partBpidBase; int partNumOfPools; } ;
typedef TYPE_2__ t_BmParam ;
struct TYPE_11__ {int guestId; struct TYPE_11__* p_BmDriverParams; struct TYPE_11__* moduleName; int liodn; int fbprThreshold; int fbprMemPartitionId; int totalNumOfBuffers; int errIrq; int h_App; int f_Exception; int exceptions; int * p_BmRegs; int partBpidBase; int partNumOfPools; } ;
typedef TYPE_1__ t_BmDriverParams ;
typedef TYPE_1__ t_Bm ;


 int DEFAULT_exceptions ;
 int DEFAULT_fbprThreshold ;
 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_NO_MEMORY ;
 int MAJOR ;
 int MODULE_NAME_SIZE ;
 int NCSW_MASTER_ID ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_2__*,int ,int *) ;
 int Sprint (TYPE_1__*,char*,int) ;
 scalar_t__ UINT_TO_PTR (int ) ;
 int XX_Free (TYPE_1__*) ;
 scalar_t__ XX_Malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

t_Handle BM_Config(t_BmParam *p_BmParam)
{
    t_Bm *p_Bm;

    SANITY_CHECK_RETURN_VALUE(p_BmParam, E_INVALID_HANDLE, ((void*)0));

    p_Bm = (t_Bm *)XX_Malloc(sizeof(t_Bm));
    if (!p_Bm)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("BM obj!!!"));
        return ((void*)0);
    }
    memset(p_Bm, 0, sizeof(t_Bm));

    p_Bm->p_BmDriverParams = (t_BmDriverParams *)XX_Malloc(sizeof(t_BmDriverParams));
    if (!p_Bm->p_BmDriverParams)
    {
        XX_Free(p_Bm);
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("Bm driver parameters"));
        return ((void*)0);
    }
    memset(p_Bm->p_BmDriverParams, 0, sizeof(t_BmDriverParams));

    p_Bm->guestId = p_BmParam->guestId;
    p_Bm->p_BmDriverParams->partNumOfPools = p_BmParam->partNumOfPools;
    p_Bm->p_BmDriverParams->partBpidBase = p_BmParam->partBpidBase;
    p_Bm->p_BmRegs = (t_BmRegs *)UINT_TO_PTR(p_BmParam->baseAddress);

    if (p_Bm->guestId == NCSW_MASTER_ID)
    {
        p_Bm->exceptions = DEFAULT_exceptions;
        p_Bm->f_Exception = p_BmParam->f_Exception;
        p_Bm->h_App = p_BmParam->h_App;
        p_Bm->errIrq = p_BmParam->errIrq;
        p_Bm->p_BmDriverParams->totalNumOfBuffers = p_BmParam->totalNumOfBuffers;
        p_Bm->p_BmDriverParams->fbprMemPartitionId = p_BmParam->fbprMemPartitionId;
        p_Bm->p_BmDriverParams->fbprThreshold = DEFAULT_fbprThreshold;
        p_Bm->p_BmDriverParams->liodn = p_BmParam->liodn;

    }

    memset(p_Bm->moduleName, 0, MODULE_NAME_SIZE);
    if(Sprint (p_Bm->moduleName, "BM_0_%d",p_Bm->guestId) != (p_Bm->guestId<10 ? 6:7))
    {
        XX_Free(p_Bm->p_BmDriverParams);
        XX_Free(p_Bm);
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("Sprint failed"));
        return ((void*)0);
    }
    return p_Bm;
}
