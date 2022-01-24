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
 scalar_t__ NetTrace ; 
 scalar_t__ NetTraceFile ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ stdout ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

void
FUNC5(char *file)
{
    if (NetTrace && NetTrace != stdout)
	FUNC0(NetTrace);
    if (file  && (FUNC3(file, "-") != 0)) {
	NetTrace = FUNC1(file, "w");
	if (NetTrace) {
	    FUNC4((char *)NetTraceFile, file);
	    return;
	}
	FUNC2(stderr, "Cannot open %s.\n", file);
    }
    NetTrace = stdout;
    FUNC4((char *)NetTraceFile, "(standard output)");
}