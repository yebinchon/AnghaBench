
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ZSTD_dictLoadMethod_e ;
typedef int ZSTD_dictContentType_e ;
struct TYPE_8__ {int customFree; int customAlloc; } ;
typedef TYPE_1__ ZSTD_customMem ;
struct TYPE_9__ {TYPE_1__ cMem; } ;
typedef TYPE_2__ ZSTD_DDict ;


 int ZSTD_freeDDict (TYPE_2__* const) ;
 size_t ZSTD_initDDict_internal (TYPE_2__* const,void const*,size_t,int ,int ) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 scalar_t__ ZSTD_malloc (int,TYPE_1__) ;

ZSTD_DDict* ZSTD_createDDict_advanced(const void* dict, size_t dictSize,
                                      ZSTD_dictLoadMethod_e dictLoadMethod,
                                      ZSTD_dictContentType_e dictContentType,
                                      ZSTD_customMem customMem)
{
    if (!customMem.customAlloc ^ !customMem.customFree) return ((void*)0);

    { ZSTD_DDict* const ddict = (ZSTD_DDict*) ZSTD_malloc(sizeof(ZSTD_DDict), customMem);
        if (ddict == ((void*)0)) return ((void*)0);
        ddict->cMem = customMem;
        { size_t const initResult = ZSTD_initDDict_internal(ddict,
                                            dict, dictSize,
                                            dictLoadMethod, dictContentType);
            if (ZSTD_isError(initResult)) {
                ZSTD_freeDDict(ddict);
                return ((void*)0);
        } }
        return ddict;
    }
}
