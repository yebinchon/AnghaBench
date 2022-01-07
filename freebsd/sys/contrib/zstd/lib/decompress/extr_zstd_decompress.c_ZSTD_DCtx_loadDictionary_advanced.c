
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_dictLoadMethod_e ;
typedef int ZSTD_dictContentType_e ;
struct TYPE_4__ {scalar_t__ streamStage; int dictUses; int * ddictLocal; int * ddict; int customMem; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int RETURN_ERROR_IF (int,int ) ;
 int ZSTD_clearDict (TYPE_1__*) ;
 int * ZSTD_createDDict_advanced (void const*,size_t,int ,int ,int ) ;
 int ZSTD_use_indefinitely ;
 int memory_allocation ;
 int stage_wrong ;
 scalar_t__ zdss_init ;

size_t ZSTD_DCtx_loadDictionary_advanced(ZSTD_DCtx* dctx,
                                   const void* dict, size_t dictSize,
                                         ZSTD_dictLoadMethod_e dictLoadMethod,
                                         ZSTD_dictContentType_e dictContentType)
{
    RETURN_ERROR_IF(dctx->streamStage != zdss_init, stage_wrong);
    ZSTD_clearDict(dctx);
    if (dict && dictSize != 0) {
        dctx->ddictLocal = ZSTD_createDDict_advanced(dict, dictSize, dictLoadMethod, dictContentType, dctx->customMem);
        RETURN_ERROR_IF(dctx->ddictLocal == ((void*)0), memory_allocation);
        dctx->ddict = dctx->ddictLocal;
        dctx->dictUses = ZSTD_use_indefinitely;
    }
    return 0;
}
