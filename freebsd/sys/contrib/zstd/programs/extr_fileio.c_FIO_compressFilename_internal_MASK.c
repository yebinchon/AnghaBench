#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ clock_t ;
typedef  int /*<<< orphan*/  cRess_t ;
typedef  int /*<<< orphan*/  UTIL_time_t ;
typedef  int U64 ;
struct TYPE_4__ {int compressionType; int /*<<< orphan*/  checksumFlag; } ;
typedef  TYPE_1__ FIO_prefs_t ;

/* Variables and functions */
 double CLOCKS_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int const,int,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int const,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int const,int,int*,int) ; 
 int FUNC5 (TYPE_1__* const,int /*<<< orphan*/ *,char const*,int const,int,int*) ; 
#define  FIO_gzipCompression 132 
#define  FIO_lz4Compression 131 
#define  FIO_lzmaCompression 130 
#define  FIO_xzCompression 129 
#define  FIO_zstdCompression 128 
 int FUNC6 (int /*<<< orphan*/  const) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static int
FUNC10(FIO_prefs_t* const prefs,
                              cRess_t ress,
                              const char* dstFileName, const char* srcFileName,
                              int compressionLevel)
{
    UTIL_time_t const timeStart = FUNC8();
    clock_t const cpuStart = FUNC9();
    U64 readsize = 0;
    U64 compressedfilesize = 0;
    U64 const fileSize = FUNC7(srcFileName);
    FUNC0(5, "%s: %u bytes \n", srcFileName, (unsigned)fileSize);

    /* compression format selection */
    switch (prefs->compressionType) {
        default:
        case FIO_zstdCompression:
            compressedfilesize = FUNC5(prefs, &ress, srcFileName, fileSize, compressionLevel, &readsize);
            break;

        case FIO_gzipCompression:
#ifdef ZSTD_GZCOMPRESS
            compressedfilesize = FIO_compressGzFrame(&ress, srcFileName, fileSize, compressionLevel, &readsize);
#else
            (void)compressionLevel;
            FUNC1(20, "zstd: %s: file cannot be compressed as gzip (zstd compiled without ZSTD_GZCOMPRESS) -- ignored \n",
                            srcFileName);
#endif
            break;

        case FIO_xzCompression:
        case FIO_lzmaCompression:
#ifdef ZSTD_LZMACOMPRESS
            compressedfilesize = FIO_compressLzmaFrame(&ress, srcFileName, fileSize, compressionLevel, &readsize, prefs->compressionType==FIO_lzmaCompression);
#else
            (void)compressionLevel;
            FUNC1(20, "zstd: %s: file cannot be compressed as xz/lzma (zstd compiled without ZSTD_LZMACOMPRESS) -- ignored \n",
                            srcFileName);
#endif
            break;

        case FIO_lz4Compression:
#ifdef ZSTD_LZ4COMPRESS
            compressedfilesize = FIO_compressLz4Frame(&ress, srcFileName, fileSize, compressionLevel, prefs->checksumFlag, &readsize);
#else
            (void)compressionLevel;
            FUNC1(20, "zstd: %s: file cannot be compressed as lz4 (zstd compiled without ZSTD_LZ4COMPRESS) -- ignored \n",
                            srcFileName);
#endif
            break;
    }

    /* Status */
    FUNC0(2, "\r%79s\r", "");
    FUNC0(2,"%-20s :%6.2f%%   (%6llu => %6llu bytes, %s) \n",
        srcFileName,
        (double)compressedfilesize / (readsize+(!readsize)/*avoid div by zero*/) * 100,
        (unsigned long long)readsize, (unsigned long long) compressedfilesize,
         dstFileName);

    /* Elapsed Time and CPU Load */
    {   clock_t const cpuEnd = FUNC9();
        double const cpuLoad_s = (double)(cpuEnd - cpuStart) / CLOCKS_PER_SEC;
        U64 const timeLength_ns = FUNC6(timeStart);
        double const timeLength_s = (double)timeLength_ns / 1000000000;
        double const cpuLoad_pct = (cpuLoad_s / timeLength_s) * 100;
        FUNC0(4, "%-20s : Completed in %.2f sec  (cpu load : %.0f%%)\n",
                        srcFileName, timeLength_s, cpuLoad_pct);
    }
    return 0;
}