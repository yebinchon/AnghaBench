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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* WELCOME_MESSAGE ; 
 int /*<<< orphan*/  ZSTDCLI_CLEVEL_DEFAULT ; 
 int /*<<< orphan*/  ZSTDCLI_CLEVEL_MAX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  g_defaultDictName ; 
 int /*<<< orphan*/  g_defaultMaxDictSize ; 
 int /*<<< orphan*/  g_defaultMaxWindowLog ; 
 int /*<<< orphan*/  g_defaultSelectivityLevel ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const char* programName)
{
    FUNC0(WELCOME_MESSAGE);
    FUNC2(programName);
    FUNC0( "\n");
    FUNC0( "Advanced arguments : \n");
    FUNC0( " -V     : display Version number and exit \n");
    FUNC0( " -v     : verbose mode; specify multiple times to increase verbosity\n");
    FUNC0( " -q     : suppress warnings; specify twice to suppress errors too\n");
    FUNC0( " -c     : force write to standard output, even if it is the console\n");
    FUNC0( " -l     : print information about zstd compressed files \n");
    FUNC0( "--exclude-compressed:  only compress files that are not previously compressed \n");
#ifndef ZSTD_NOCOMPRESS
    FUNC0( "--ultra : enable levels beyond %i, up to %i (requires more memory)\n", ZSTDCLI_CLEVEL_MAX, FUNC1());
    FUNC0( "--long[=#]: enable long distance matching with given window log (default: %u)\n", g_defaultMaxWindowLog);
    FUNC0( "--fast[=#]: switch to very fast compression levels (default: %u)\n", 1);
    FUNC0( "--adapt : dynamically adapt compression level to I/O conditions \n");
    FUNC0( "--stream-size=# : optimize compression parameters for streaming input of given number of bytes \n");
    FUNC0( "--size-hint=# optimize compression parameters for streaming input of approximately this size\n");
    FUNC0( "--target-compressed-block-size=# : make compressed block near targeted size \n");
#ifdef ZSTD_MULTITHREAD
    DISPLAY( " -T#    : spawns # compression threads (default: 1, 0==# cores) \n");
    DISPLAY( " -B#    : select size of each job (default: 0==automatic) \n");
    DISPLAY( "--rsyncable : compress using a rsync-friendly method (-B sets block size) \n");
#endif
    FUNC0( "--no-dictID : don't write dictID into header (dictionary compression)\n");
    FUNC0( "--[no-]check : integrity check (default: enabled) \n");
    FUNC0( "--[no-]compress-literals : force (un)compressed literals \n");
#endif
#ifdef UTIL_HAS_CREATEFILELIST
    DISPLAY( " -r     : operate recursively on directories \n");
    DISPLAY( "--output-dir-flat[=directory]: all resulting files stored into `directory`. \n");
#endif
    FUNC0( "--format=zstd : compress files to the .zst format (default) \n");
#ifdef ZSTD_GZCOMPRESS
    DISPLAY( "--format=gzip : compress files to the .gz format \n");
#endif
#ifdef ZSTD_LZMACOMPRESS
    DISPLAY( "--format=xz : compress files to the .xz format \n");
    DISPLAY( "--format=lzma : compress files to the .lzma format \n");
#endif
#ifdef ZSTD_LZ4COMPRESS
    DISPLAY( "--format=lz4 : compress files to the .lz4 format \n");
#endif
#ifndef ZSTD_NODECOMPRESS
    FUNC0( "--test  : test compressed file integrity \n");
#if ZSTD_SPARSE_DEFAULT
    DISPLAY( "--[no-]sparse : sparse mode (default: enabled on file, disabled on stdout)\n");
#else
    FUNC0( "--[no-]sparse : sparse mode (default: disabled)\n");
#endif
#endif
    FUNC0( " -M#    : Set a memory usage limit for decompression \n");
    FUNC0( "--no-progress : do not display the progress bar \n");
    FUNC0( "--      : All arguments after \"--\" are treated as files \n");
#ifndef ZSTD_NODICT
    FUNC0( "\n");
    FUNC0( "Dictionary builder : \n");
    FUNC0( "--train ## : create a dictionary from a training set of files \n");
    FUNC0( "--train-cover[=k=#,d=#,steps=#,split=#,shrink[=#]] : use the cover algorithm with optional args\n");
    FUNC0( "--train-fastcover[=k=#,d=#,f=#,steps=#,split=#,accel=#,shrink[=#]] : use the fast cover algorithm with optional args\n");
    FUNC0( "--train-legacy[=s=#] : use the legacy algorithm with selectivity (default: %u)\n", g_defaultSelectivityLevel);
    FUNC0( " -o file : `file` is dictionary name (default: %s) \n", g_defaultDictName);
    FUNC0( "--maxdict=# : limit dictionary to specified size (default: %u) \n", g_defaultMaxDictSize);
    FUNC0( "--dictID=# : force dictionary ID to specified value (default: random)\n");
#endif
#ifndef ZSTD_NOBENCH
    FUNC0( "\n");
    FUNC0( "Benchmark arguments : \n");
    FUNC0( " -b#    : benchmark file(s), using # compression level (default: %d) \n", ZSTDCLI_CLEVEL_DEFAULT);
    FUNC0( " -e#    : test all compression levels from -bX to # (default: 1)\n");
    FUNC0( " -i#    : minimum evaluation time in seconds (default: 3s) \n");
    FUNC0( " -B#    : cut file into independent blocks of size # (default: no block)\n");
    FUNC0( "--priority=rt : set process priority to real-time \n");
#endif
    return 0;
}