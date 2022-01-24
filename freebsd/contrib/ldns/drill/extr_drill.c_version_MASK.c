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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* DRILL_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC1 () ; 

__attribute__((used)) static void
FUNC2(FILE *stream, const char *progname)
{
        FUNC0(stream, "%s version %s (ldns version %s)\n", progname, DRILL_VERSION, FUNC1());
        FUNC0(stream, "Written by NLnet Labs.\n");
        FUNC0(stream, "\nCopyright (c) 2004-2008 NLnet Labs.\n");
        FUNC0(stream, "Licensed under the revised BSD license.\n");
        FUNC0(stream, "There is NO warranty; not even for MERCHANTABILITY or FITNESS\n");
        FUNC0(stream, "FOR A PARTICULAR PURPOSE.\n");
}