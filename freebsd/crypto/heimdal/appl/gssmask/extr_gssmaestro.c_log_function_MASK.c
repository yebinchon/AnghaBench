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
struct client {int /*<<< orphan*/  logsock; } ;
typedef  int int32_t ;

/* Variables and functions */
#define  eLogFailure 130 
#define  eLogInfo 129 
#define  eLogSetMoniker 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  logfile ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned long,char*) ; 

__attribute__((used)) static int
FUNC8(void *ptr)
{
    struct client *c = ptr;
    int32_t cmd, line;
    char *file, *string;

    while (1) {
        if (FUNC4(c->logsock, &cmd))
	    goto out;

	switch (cmd) {
	case eLogSetMoniker:
	    if (FUNC5(c->logsock, &file))
		goto out;
	    FUNC3(file);
	    break;
	case eLogInfo:
	case eLogFailure:
	    if (FUNC5(c->logsock, &file))
		goto out;
	    if (FUNC4(c->logsock, &line))
		goto out;
	    if (FUNC5(c->logsock, &string))
		goto out;
	    FUNC7("%s:%lu: %s\n",
		   file, (unsigned long)line, string);
	    FUNC2(logfile, "%s:%lu: %s\n",
		    file, (unsigned long)line, string);
	    FUNC1(logfile);
	    FUNC3(file);
	    FUNC3(string);
	    if (FUNC6(c->logsock, 0))
		goto out;
	    break;
	default:
	    FUNC0(1, "client send bad log command: %d", (int)cmd);
	}
    }
out:

    return 0;
}