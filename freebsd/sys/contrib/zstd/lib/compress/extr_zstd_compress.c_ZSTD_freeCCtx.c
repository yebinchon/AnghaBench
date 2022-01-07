
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int customMem; int workspace; int staticSize; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 int RETURN_ERROR_IF (int ,int ,char*) ;
 int ZSTD_cwksp_owns_buffer (int *,TYPE_1__*) ;
 int ZSTD_free (TYPE_1__*,int ) ;
 int ZSTD_freeCCtxContent (TYPE_1__*) ;
 int memory_allocation ;

size_t ZSTD_freeCCtx(ZSTD_CCtx* cctx)
{
    if (cctx==((void*)0)) return 0;
    RETURN_ERROR_IF(cctx->staticSize, memory_allocation,
                    "not compatible with static CCtx");
    {
        int cctxInWorkspace = ZSTD_cwksp_owns_buffer(&cctx->workspace, cctx);
        ZSTD_freeCCtxContent(cctx);
        if (!cctxInWorkspace) {
            ZSTD_free(cctx, cctx->customMem);
        }
    }
    return 0;
}
