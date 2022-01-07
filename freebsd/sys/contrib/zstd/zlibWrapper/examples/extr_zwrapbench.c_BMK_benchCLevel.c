
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BMK_ZLIB ;
 int BMK_ZLIB_REUSE ;
 int BMK_ZSTD ;
 int BMK_ZSTD_STREAM ;
 int BMK_ZWRAP_ZLIB ;
 int BMK_ZWRAP_ZLIB_REUSE ;
 int BMK_ZWRAP_ZSTD ;
 int BMK_ZWRAP_ZSTD_REUSE ;
 int BMK_benchMem (void*,size_t,char const*,int,size_t const*,unsigned int,void const*,size_t,int ) ;
 int DISPLAY (char*,...) ;
 int SET_REALTIME_PRIORITY ;
 int ZLIB_VERSION ;
 int ZSTD_GIT_COMMIT_STRING ;
 int ZSTD_VERSION_STRING ;
 int Z_BEST_COMPRESSION ;
 int g_additionalParam ;
 int g_blockSize ;
 int g_displayLevel ;
 int g_nbIterations ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void BMK_benchCLevel(void* srcBuffer, size_t benchedSize,
                            const char* displayName, int cLevel, int cLevelLast,
                            const size_t* fileSizes, unsigned nbFiles,
                            const void* dictBuffer, size_t dictBufferSize)
{
    int l;

    const char* pch = strrchr(displayName, '\\');
    if (!pch) pch = strrchr(displayName, '/');
    if (pch) displayName = pch+1;

    SET_REALTIME_PRIORITY;

    if (g_displayLevel == 1 && !g_additionalParam)
        DISPLAY("bench %s %s: input %u bytes, %u seconds, %u KB blocks\n",
                ZSTD_VERSION_STRING, ZSTD_GIT_COMMIT_STRING,
                (unsigned)benchedSize, g_nbIterations, (unsigned)(g_blockSize>>10));

    if (cLevelLast < cLevel) cLevelLast = cLevel;

    DISPLAY("benchmarking zstd %s (using ZSTD_CStream)\n", ZSTD_VERSION_STRING);
    for (l=cLevel; l <= cLevelLast; l++) {
        BMK_benchMem(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZSTD_STREAM);
    }

    DISPLAY("benchmarking zstd %s (using ZSTD_CCtx)\n", ZSTD_VERSION_STRING);
    for (l=cLevel; l <= cLevelLast; l++) {
        BMK_benchMem(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZSTD);
    }

    DISPLAY("benchmarking zstd %s (using zlibWrapper)\n", ZSTD_VERSION_STRING);
    for (l=cLevel; l <= cLevelLast; l++) {
        BMK_benchMem(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZWRAP_ZSTD_REUSE);
    }

    DISPLAY("benchmarking zstd %s (zlibWrapper not reusing a context)\n", ZSTD_VERSION_STRING);
    for (l=cLevel; l <= cLevelLast; l++) {
        BMK_benchMem(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZWRAP_ZSTD);
    }


    if (cLevelLast > Z_BEST_COMPRESSION) cLevelLast = Z_BEST_COMPRESSION;

    DISPLAY("\n");
    DISPLAY("benchmarking zlib %s\n", ZLIB_VERSION);
    for (l=cLevel; l <= cLevelLast; l++) {
        BMK_benchMem(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZLIB_REUSE);
    }

    DISPLAY("benchmarking zlib %s (zlib not reusing a context)\n", ZLIB_VERSION);
    for (l=cLevel; l <= cLevelLast; l++) {
        BMK_benchMem(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZLIB);
    }

    DISPLAY("benchmarking zlib %s (using zlibWrapper)\n", ZLIB_VERSION);
    for (l=cLevel; l <= cLevelLast; l++) {
        BMK_benchMem(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZWRAP_ZLIB_REUSE);
    }

    DISPLAY("benchmarking zlib %s (zlibWrapper not reusing a context)\n", ZLIB_VERSION);
    for (l=cLevel; l <= cLevelLast; l++) {
        BMK_benchMem(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZWRAP_ZLIB);
    }
}
