
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_cParameter ;
typedef int ZSTD_CCtx ;


 int FUZZ_ZASSERT (int ) ;
 int ZSTD_CCtx_setParameter (int *,int ,int) ;

__attribute__((used)) static void set(ZSTD_CCtx *cctx, ZSTD_cParameter param, int value)
{
    FUZZ_ZASSERT(ZSTD_CCtx_setParameter(cctx, param, value));
}
