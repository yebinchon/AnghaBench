
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_compressionParameters ;
typedef int BMK_benchOutcome_t ;
typedef int BMK_advancedParams_t ;


 int BMK_benchMemAdvanced (void const*,size_t,int *,int ,size_t const*,unsigned int,int,int const*,void const*,size_t,int,char const*,int const*) ;
 int BMK_initAdvancedParams () ;

BMK_benchOutcome_t BMK_benchMem(const void* srcBuffer, size_t srcSize,
                        const size_t* fileSizes, unsigned nbFiles,
                        int cLevel, const ZSTD_compressionParameters* comprParams,
                        const void* dictBuffer, size_t dictBufferSize,
                        int displayLevel, const char* displayName) {

    BMK_advancedParams_t const adv = BMK_initAdvancedParams();
    return BMK_benchMemAdvanced(srcBuffer, srcSize,
                                ((void*)0), 0,
                                fileSizes, nbFiles,
                                cLevel, comprParams,
                                dictBuffer, dictBufferSize,
                                displayLevel, displayName, &adv);
}
