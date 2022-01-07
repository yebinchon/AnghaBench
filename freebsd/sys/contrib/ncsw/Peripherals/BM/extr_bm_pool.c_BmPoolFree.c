
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int t_Handle ;
typedef int t_Error ;
struct TYPE_9__ {int h_BufferPool; int (* f_PutBuf ) (int ,void*,int ) ;} ;
struct TYPE_10__ {int flags; struct TYPE_10__* sp; int bpid; int h_Bm; TYPE_1__ bufferPoolInfo; int h_BmPortal; int shadowMode; } ;
typedef TYPE_2__ t_BmPool ;


 int ASSERT_COND (TYPE_2__*) ;
 int BMAN_POOL_FLAG_DEPLETION ;
 void* BM_POOL_GetBuf (TYPE_2__*,int ) ;
 int BM_POOL_GetBufferContext (TYPE_2__*,void*) ;
 int BmBpidPut (int ,int ) ;
 int BmUnSetPoolThresholds (int ,int ) ;
 int E_OK ;
 scalar_t__ TRUE ;
 int XX_Free (TYPE_2__*) ;
 int depletion_unlink (TYPE_2__*) ;
 int stub1 (int ,void*,int ) ;

__attribute__((used)) static t_Error BmPoolFree(t_BmPool *p_BmPool, bool discardBuffers)
{
    t_Handle h_BufContext;
    void *p_Data;

    ASSERT_COND(p_BmPool);

    if (!p_BmPool->shadowMode)
    {
        if (p_BmPool->flags & BMAN_POOL_FLAG_DEPLETION)
        {
            depletion_unlink(p_BmPool);
            BmUnSetPoolThresholds(p_BmPool->h_Bm, p_BmPool->bpid);
        }
        while (TRUE)
        {
            p_Data = BM_POOL_GetBuf(p_BmPool, p_BmPool->h_BmPortal);
            if (!p_Data)
                break;
            h_BufContext = BM_POOL_GetBufferContext(p_BmPool, p_Data);
            if (!discardBuffers)
                p_BmPool->bufferPoolInfo.f_PutBuf(p_BmPool->bufferPoolInfo.h_BufferPool, p_Data, h_BufContext);
        }
        BmBpidPut(p_BmPool->h_Bm, p_BmPool->bpid);
    }

    if (p_BmPool->sp)
        XX_Free(p_BmPool->sp);

    XX_Free(p_BmPool);

    return E_OK;
}
