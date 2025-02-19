
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_compressionParameters ;
struct TYPE_4__ {int blockSize; int nbSeconds; int additionalParam; scalar_t__ realTime; } ;
typedef int BMK_benchOutcome_t ;
typedef TYPE_1__ BMK_advancedParams_t ;


 int BMK_benchMemAdvanced (void const*,size_t,int *,int ,size_t const*,unsigned int,int,int const*,void const*,size_t,int,char const*,TYPE_1__ const* const) ;
 int DISPLAY (char*,int ,int ,unsigned int,int ,unsigned int) ;
 int DISPLAYLEVEL (int,char*) ;
 int SET_REALTIME_PRIORITY ;
 int ZSTD_GIT_COMMIT_STRING ;
 int ZSTD_VERSION_STRING ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static BMK_benchOutcome_t BMK_benchCLevel(const void* srcBuffer, size_t benchedSize,
                            const size_t* fileSizes, unsigned nbFiles,
                            int cLevel, const ZSTD_compressionParameters* comprParams,
                            const void* dictBuffer, size_t dictBufferSize,
                            int displayLevel, const char* displayName,
                            BMK_advancedParams_t const * const adv)
{
    const char* pch = strrchr(displayName, '\\');
    if (!pch) pch = strrchr(displayName, '/');
    if (pch) displayName = pch+1;

    if (adv->realTime) {
        DISPLAYLEVEL(2, "Note : switching to real-time priority \n");
        SET_REALTIME_PRIORITY;
    }

    if (displayLevel == 1 && !adv->additionalParam)
        DISPLAY("bench %s %s: input %u bytes, %u seconds, %u KB blocks\n",
                ZSTD_VERSION_STRING, ZSTD_GIT_COMMIT_STRING,
                (unsigned)benchedSize, adv->nbSeconds, (unsigned)(adv->blockSize>>10));

    return BMK_benchMemAdvanced(srcBuffer, benchedSize,
                                ((void*)0), 0,
                                fileSizes, nbFiles,
                                cLevel, comprParams,
                                dictBuffer, dictBufferSize,
                                displayLevel, displayName, adv);
}
