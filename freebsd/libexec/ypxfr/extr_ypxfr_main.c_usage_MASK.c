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
 int /*<<< orphan*/  YPXFR_BADARGS ; 
 scalar_t__ _rpcpmstart ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void)
{
	if (_rpcpmstart) {
		FUNC2(YPXFR_BADARGS,NULL);
	} else {
		FUNC1(stderr, "%s\n%s\n%s\n",
	"usage: ypxfr [-f] [-c] [-d target domain] [-h source host]",
	"             [-s source domain] [-p path]",
	"             [-C taskid program-number ipaddr port] mapname");
		FUNC0(1);
	}
}