
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CCtx_params ;


 size_t ZSTD_CCtxParams_setParameter (int *,int ,int) ;
 int ZSTD_c_nbWorkers ;

size_t ZSTDMT_CCtxParam_setNbWorkers(ZSTD_CCtx_params* params, unsigned nbWorkers)
{
    return ZSTD_CCtxParams_setParameter(params, ZSTD_c_nbWorkers, (int)nbWorkers);
}
