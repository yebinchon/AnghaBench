
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_cParameter ;
typedef int ZSTD_CCtx_params ;
typedef int ZSTD_CCtx ;


 size_t ZSTD_CCtxParams_setParameter (int *,int ,unsigned int) ;
 size_t ZSTD_CCtx_setParameter (int *,int ,unsigned int) ;

__attribute__((used)) static size_t setCCtxParameter(ZSTD_CCtx* zc, ZSTD_CCtx_params* cctxParams,
                               ZSTD_cParameter param, unsigned value,
                               int useOpaqueAPI)
{
    if (useOpaqueAPI) {
        return ZSTD_CCtxParams_setParameter(cctxParams, param, value);
    } else {
        return ZSTD_CCtx_setParameter(zc, param, value);
    }
}
