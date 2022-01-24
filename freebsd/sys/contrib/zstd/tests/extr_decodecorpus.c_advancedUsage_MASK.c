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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(const char* programName)
{
    FUNC1(programName);
    FUNC0( "\n");
    FUNC0( "Advanced arguments        :\n");
    FUNC0( " --content-size           : always include the content size in the frame header\n");
    FUNC0( " --use-dict=#             : include a dictionary used to decompress the corpus\n");
    FUNC0( " --gen-blocks             : generate raw compressed blocks without block/frame headers\n");
    FUNC0( " --max-block-size-log=#   : max block size log, must be in range [2, 17]\n");
    FUNC0( " --max-content-size-log=# : max content size log, must be <= 20\n");
    FUNC0( "                            (this is ignored with gen-blocks)\n");
}