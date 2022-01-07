
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_7__ {int flags; scalar_t__ bpid; int spMaxBufs; int numOfBuffers; int h_BmPortal; struct TYPE_7__* p_BmPoolDriverParams; struct bm_buffer* sp; int depletionThresholds; int h_Bm; scalar_t__ useDepletion; int shadowMode; scalar_t__ useStockpile; scalar_t__ dynamicBpid; } ;
typedef TYPE_1__ t_BmPool ;
struct bm_buffer {int dummy; } ;


 int BMAN_POOL_FLAG_DEPLETION ;
 int BMAN_POOL_FLAG_DYNAMIC_BPID ;
 int BMAN_POOL_FLAG_STOCKPILE ;
 int BM_POOL_FillBufs (TYPE_1__*,int ,int ) ;
 int BM_POOL_Free (TYPE_1__*) ;
 scalar_t__ BmBpidGet (int ,int ,scalar_t__) ;
 scalar_t__ BmSetPoolThresholds (int ,scalar_t__,int ) ;
 int CRITICAL ;
 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_NO_MEMORY ;
 int E_OK ;
 int FALSE ;
 scalar_t__ ILLEGAL_BASE ;
 int MAJOR ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int TRUE ;
 int XX_Free (TYPE_1__*) ;
 scalar_t__ XX_Malloc (int) ;
 int depletion_link (TYPE_1__*) ;
 int memset (struct bm_buffer*,int ,int) ;

t_Error BM_POOL_Init(t_Handle h_BmPool)
{
    t_BmPool *p_BmPool = (t_BmPool *)h_BmPool;
    t_Error err;

    SANITY_CHECK_RETURN_ERROR(p_BmPool, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_BmPool->p_BmPoolDriverParams, E_INVALID_HANDLE);

    p_BmPool->flags |= (p_BmPool->p_BmPoolDriverParams->dynamicBpid)?BMAN_POOL_FLAG_DYNAMIC_BPID:0;
    p_BmPool->flags |= (p_BmPool->p_BmPoolDriverParams->useStockpile)?BMAN_POOL_FLAG_STOCKPILE:0;
    p_BmPool->flags |= ((!p_BmPool->shadowMode) &&
                        (p_BmPool->p_BmPoolDriverParams->useDepletion))?BMAN_POOL_FLAG_DEPLETION:0;

    if (p_BmPool->flags & BMAN_POOL_FLAG_DYNAMIC_BPID)
    {
        if((p_BmPool->bpid = (uint8_t)BmBpidGet(p_BmPool->h_Bm, FALSE, (uint32_t)0)) == (uint8_t)ILLEGAL_BASE)
        {
            BM_POOL_Free(p_BmPool);
            RETURN_ERROR(CRITICAL, E_INVALID_STATE, ("can't allocate new dynamic pool id"));
        }
    }
    else
    {
        if (BmBpidGet(p_BmPool->h_Bm, TRUE, (uint32_t)p_BmPool->bpid) == (uint32_t)ILLEGAL_BASE)
        {
            BM_POOL_Free(p_BmPool);
            RETURN_ERROR(CRITICAL, E_INVALID_STATE, ("can't force pool id %d", p_BmPool->bpid));
        }
    }
    if (p_BmPool->flags & BMAN_POOL_FLAG_DEPLETION)
    {
        if(BmSetPoolThresholds(p_BmPool->h_Bm, p_BmPool->bpid, p_BmPool->p_BmPoolDriverParams->depletionThresholds))
        {
            BM_POOL_Free(p_BmPool);
            RETURN_ERROR(MAJOR, E_INVALID_STATE, ("can't set thresh for pool bpid %d",p_BmPool->bpid));
        }

        depletion_link(p_BmPool);
    }

    if (p_BmPool->flags & BMAN_POOL_FLAG_STOCKPILE)
    {
        p_BmPool->sp = (struct bm_buffer *)XX_Malloc(sizeof(struct bm_buffer) * p_BmPool->spMaxBufs);
        if (!p_BmPool->sp)
        {
            BM_POOL_Free(p_BmPool);
            RETURN_ERROR(MAJOR, E_NO_MEMORY, ("Bm Pool Stockpile"));
        }
        memset(p_BmPool->sp, 0, sizeof(struct bm_buffer) * p_BmPool->spMaxBufs);
    }

    XX_Free(p_BmPool->p_BmPoolDriverParams);
    p_BmPool->p_BmPoolDriverParams = ((void*)0);




    if ((err = BM_POOL_FillBufs (p_BmPool, p_BmPool->h_BmPortal, p_BmPool->numOfBuffers)) != E_OK)
    {
        BM_POOL_Free(p_BmPool);
        RETURN_ERROR(MAJOR, err, NO_MSG);
    }

    return E_OK;
}
