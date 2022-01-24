#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  BMK_ZLIB ; 
 int /*<<< orphan*/  BMK_ZLIB_REUSE ; 
 int /*<<< orphan*/  BMK_ZSTD ; 
 int /*<<< orphan*/  BMK_ZSTD_STREAM ; 
 int /*<<< orphan*/  BMK_ZWRAP_ZLIB ; 
 int /*<<< orphan*/  BMK_ZWRAP_ZLIB_REUSE ; 
 int /*<<< orphan*/  BMK_ZWRAP_ZSTD ; 
 int /*<<< orphan*/  BMK_ZWRAP_ZSTD_REUSE ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t,char const*,int,size_t const*,unsigned int,void const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  SET_REALTIME_PRIORITY ; 
 int /*<<< orphan*/  ZLIB_VERSION ; 
 int /*<<< orphan*/  ZSTD_GIT_COMMIT_STRING ; 
 int /*<<< orphan*/  ZSTD_VERSION_STRING ; 
 int Z_BEST_COMPRESSION ; 
 int /*<<< orphan*/  g_additionalParam ; 
 int g_blockSize ; 
 int g_displayLevel ; 
 int /*<<< orphan*/  g_nbIterations ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static void FUNC3(void* srcBuffer, size_t benchedSize,
                            const char* displayName, int cLevel, int cLevelLast,
                            const size_t* fileSizes, unsigned nbFiles,
                            const void* dictBuffer, size_t dictBufferSize)
{
    int l;

    const char* pch = FUNC2(displayName, '\\'); /* Windows */
    if (!pch) pch = FUNC2(displayName, '/'); /* Linux */
    if (pch) displayName = pch+1;

    SET_REALTIME_PRIORITY;

    if (g_displayLevel == 1 && !g_additionalParam)
        FUNC1("bench %s %s: input %u bytes, %u seconds, %u KB blocks\n",
                ZSTD_VERSION_STRING, ZSTD_GIT_COMMIT_STRING,
                (unsigned)benchedSize, g_nbIterations, (unsigned)(g_blockSize>>10));

    if (cLevelLast < cLevel) cLevelLast = cLevel;

    FUNC1("benchmarking zstd %s (using ZSTD_CStream)\n", ZSTD_VERSION_STRING);
    for (l=cLevel; l <= cLevelLast; l++) {
        FUNC0(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZSTD_STREAM);
    }

    FUNC1("benchmarking zstd %s (using ZSTD_CCtx)\n", ZSTD_VERSION_STRING);
    for (l=cLevel; l <= cLevelLast; l++) {
        FUNC0(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZSTD);
    }

    FUNC1("benchmarking zstd %s (using zlibWrapper)\n", ZSTD_VERSION_STRING);
    for (l=cLevel; l <= cLevelLast; l++) {
        FUNC0(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZWRAP_ZSTD_REUSE);
    }

    FUNC1("benchmarking zstd %s (zlibWrapper not reusing a context)\n", ZSTD_VERSION_STRING);
    for (l=cLevel; l <= cLevelLast; l++) {
        FUNC0(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZWRAP_ZSTD);
    }


    if (cLevelLast > Z_BEST_COMPRESSION) cLevelLast = Z_BEST_COMPRESSION;

    FUNC1("\n");
    FUNC1("benchmarking zlib %s\n", ZLIB_VERSION);
    for (l=cLevel; l <= cLevelLast; l++) {
        FUNC0(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZLIB_REUSE);
    }

    FUNC1("benchmarking zlib %s (zlib not reusing a context)\n", ZLIB_VERSION);
    for (l=cLevel; l <= cLevelLast; l++) {
        FUNC0(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZLIB);
    }

    FUNC1("benchmarking zlib %s (using zlibWrapper)\n", ZLIB_VERSION);
    for (l=cLevel; l <= cLevelLast; l++) {
        FUNC0(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZWRAP_ZLIB_REUSE);
    }

    FUNC1("benchmarking zlib %s (zlibWrapper not reusing a context)\n", ZLIB_VERSION);
    for (l=cLevel; l <= cLevelLast; l++) {
        FUNC0(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuffer, dictBufferSize, BMK_ZWRAP_ZLIB);
    }
}