
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DCtx ;


 size_t ZSTD_DCtx_loadDictionary_advanced (int *,void const*,size_t,int ,int ) ;
 int ZSTD_dct_auto ;
 int ZSTD_dlm_byRef ;

size_t ZSTD_DCtx_loadDictionary_byReference(ZSTD_DCtx* dctx, const void* dict, size_t dictSize)
{
    return ZSTD_DCtx_loadDictionary_advanced(dctx, dict, dictSize, ZSTD_dlm_byRef, ZSTD_dct_auto);
}
