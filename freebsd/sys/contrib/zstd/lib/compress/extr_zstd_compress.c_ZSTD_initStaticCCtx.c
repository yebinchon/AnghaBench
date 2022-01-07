
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_cwksp ;
typedef int ZSTD_compressedBlockState_t ;
struct TYPE_5__ {int * nextCBlock; int * prevCBlock; } ;
struct TYPE_6__ {size_t staticSize; int bmi2; int workspace; int * entropyWorkspace; TYPE_1__ blockState; } ;
typedef TYPE_2__ ZSTD_CCtx ;
typedef int U32 ;


 int HUF_WORKSPACE_SIZE ;
 int ZSTD_cpuid () ;
 int ZSTD_cpuid_bmi2 (int ) ;
 int ZSTD_cwksp_check_available (int *,int) ;
 int ZSTD_cwksp_init (int *,void*,size_t) ;
 int ZSTD_cwksp_move (int *,int *) ;
 scalar_t__ ZSTD_cwksp_reserve_object (int *,int) ;
 int memset (TYPE_2__*,int ,int) ;

ZSTD_CCtx* ZSTD_initStaticCCtx(void *workspace, size_t workspaceSize)
{
    ZSTD_cwksp ws;
    ZSTD_CCtx* cctx;
    if (workspaceSize <= sizeof(ZSTD_CCtx)) return ((void*)0);
    if ((size_t)workspace & 7) return ((void*)0);
    ZSTD_cwksp_init(&ws, workspace, workspaceSize);

    cctx = (ZSTD_CCtx*)ZSTD_cwksp_reserve_object(&ws, sizeof(ZSTD_CCtx));
    if (cctx == ((void*)0)) {
        return ((void*)0);
    }
    memset(cctx, 0, sizeof(ZSTD_CCtx));
    ZSTD_cwksp_move(&cctx->workspace, &ws);
    cctx->staticSize = workspaceSize;


    if (!ZSTD_cwksp_check_available(&cctx->workspace, HUF_WORKSPACE_SIZE + 2 * sizeof(ZSTD_compressedBlockState_t))) return ((void*)0);
    cctx->blockState.prevCBlock = (ZSTD_compressedBlockState_t*)ZSTD_cwksp_reserve_object(&cctx->workspace, sizeof(ZSTD_compressedBlockState_t));
    cctx->blockState.nextCBlock = (ZSTD_compressedBlockState_t*)ZSTD_cwksp_reserve_object(&cctx->workspace, sizeof(ZSTD_compressedBlockState_t));
    cctx->entropyWorkspace = (U32*)ZSTD_cwksp_reserve_object(
        &cctx->workspace, HUF_WORKSPACE_SIZE);
    cctx->bmi2 = ZSTD_cpuid_bmi2(ZSTD_cpuid());
    return cctx;
}
