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
 int /*<<< orphan*/  ZSTDCLI_CLEVEL_DEFAULT ; 
 int /*<<< orphan*/  ZSTDCLI_CLEVEL_MAX ; 

__attribute__((used)) static int FUNC1(const char* programName)
{
    FUNC0( "Usage : \n");
    FUNC0( "      %s [args] [FILE(s)] [-o file] \n", programName);
    FUNC0( "\n");
    FUNC0( "FILE    : a filename \n");
    FUNC0( "          with no FILE, or when FILE is - , read standard input\n");
    FUNC0( "Arguments : \n");
#ifndef ZSTD_NOCOMPRESS
    FUNC0( " -#     : # compression level (1-%d, default: %d) \n", ZSTDCLI_CLEVEL_MAX, ZSTDCLI_CLEVEL_DEFAULT);
#endif
#ifndef ZSTD_NODECOMPRESS
    FUNC0( " -d     : decompression \n");
#endif
    FUNC0( " -D file: use `file` as Dictionary \n");
    FUNC0( " -o file: result stored into `file` (only if 1 input file) \n");
    FUNC0( " -f     : overwrite output without prompting and (de)compress links \n");
    FUNC0( "--rm    : remove source file(s) after successful de/compression \n");
    FUNC0( " -k     : preserve source file(s) (default) \n");
    FUNC0( " -h/-H  : display help/long help and exit \n");
    return 0;
}