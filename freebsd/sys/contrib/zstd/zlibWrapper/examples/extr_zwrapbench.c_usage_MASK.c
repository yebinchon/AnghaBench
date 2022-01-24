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
 int /*<<< orphan*/  DEFAULT_DISPLAY_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* WELCOME_MESSAGE ; 
 int /*<<< orphan*/  ZSTDCLI_CLEVEL_DEFAULT ; 

__attribute__((used)) static int FUNC1(const char* programName)
{
    FUNC0(WELCOME_MESSAGE);
    FUNC0( "Usage :\n");
    FUNC0( "      %s [args] [FILE(s)] [-o file]\n", programName);
    FUNC0( "\n");
    FUNC0( "FILE    : a filename\n");
    FUNC0( "          with no FILE, or when FILE is - , read standard input\n");
    FUNC0( "Arguments :\n");
    FUNC0( " -D file: use `file` as Dictionary \n");
    FUNC0( " -h/-H  : display help/long help and exit\n");
    FUNC0( " -V     : display Version number and exit\n");
    FUNC0( " -v     : verbose mode; specify multiple times to increase log level (default:%d)\n", DEFAULT_DISPLAY_LEVEL);
    FUNC0( " -q     : suppress warnings; specify twice to suppress errors too\n");
#ifdef UTIL_HAS_CREATEFILELIST
    DISPLAY( " -r     : operate recursively on directories\n");
#endif
    FUNC0( "\n");
    FUNC0( "Benchmark arguments :\n");
    FUNC0( " -b#    : benchmark file(s), using # compression level (default : %d) \n", ZSTDCLI_CLEVEL_DEFAULT);
    FUNC0( " -e#    : test all compression levels from -bX to # (default: %d)\n", ZSTDCLI_CLEVEL_DEFAULT);
    FUNC0( " -i#    : minimum evaluation time in seconds (default : 3s)\n");
    FUNC0( " -B#    : cut file into independent blocks of size # (default: no block)\n");
    return 0;
}