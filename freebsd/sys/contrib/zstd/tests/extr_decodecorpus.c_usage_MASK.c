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

__attribute__((used)) static void FUNC1(const char* programName)
{
    FUNC0( "Usage :\n");
    FUNC0( "      %s [args]\n", programName);
    FUNC0( "\n");
    FUNC0( "Arguments :\n");
    FUNC0( " -p<path> : select output path (default:stdout)\n");
    FUNC0( "                in multiple files mode this should be a directory\n");
    FUNC0( " -o<path> : select path to output original file (default:no output)\n");
    FUNC0( "                in multiple files mode this should be a directory\n");
    FUNC0( " -s#      : select seed (default:random based on time)\n");
    FUNC0( " -n#      : number of files to generate (default:1)\n");
    FUNC0( " -t       : activate test mode (test files against libzstd instead of outputting them)\n");
    FUNC0( " -T#      : length of time to run tests for\n");
    FUNC0( " -v       : increase verbosity level (default:0, max:7)\n");
    FUNC0( " -h/H     : display help/long help and exit\n");
}